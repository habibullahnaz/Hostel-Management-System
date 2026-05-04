CREATE TABLE STUDENT (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    cnic VARCHAR2(20) UNIQUE,
    phone VARCHAR2(20),
    address VARCHAR2(200)
);

CREATE TABLE HOSTEL (
    hostel_id NUMBER PRIMARY KEY,
    hostel_name VARCHAR2(100),
    location VARCHAR2(100)
);

CREATE TABLE ROOM (
    room_id NUMBER PRIMARY KEY,
    capacity NUMBER,
    occupied_seats NUMBER,
    hostel_id NUMBER,
    FOREIGN KEY (hostel_id) REFERENCES HOSTEL(hostel_id)
);

CREATE TABLE ALLOCATION (
    allocation_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    room_id NUMBER,
    allocation_date DATE,
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
    FOREIGN KEY (room_id) REFERENCES ROOM(room_id)
);

CREATE TABLE FEE (
    fee_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    amount NUMBER,
    status VARCHAR2(10),
    due_date DATE,
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id)
);
