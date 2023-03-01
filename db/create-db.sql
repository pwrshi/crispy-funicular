CREATE TABLE weekdays (
    "id" serial NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT "weekday_pk" PRIMARY KEY ("id")
);
CREATE TABLE teachers (
    "id" serial NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT "teacher_pk" PRIMARY KEY ("id")
);
CREATE TABLE disciplines (
    "id" serial NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT "discipline_pk" PRIMARY KEY ("id")
);
CREATE TABLE lesson_types (
    "id" serial NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT "lesson-type_pk" PRIMARY KEY ("id")
);
CREATE TABLE lesson_times (
    "id" serial NOT NULL,
    "time" varchar(50) NOT NULL,
    CONSTRAINT "lesson-time_pk" PRIMARY KEY ("id")
);
CREATE TABLE rooms (
    "id" serial NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT "room_pk" PRIMARY KEY ("id")
);
CREATE TABLE groups (
    "id" serial NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT "group_pk" PRIMARY KEY ("id")
);
CREATE TABLE lesson (
    "id" serial NOT NULL,
    week_is_odd boolean NOT NULL,
    weekday int NOT NULL,
    teacher int NOT NULL,
    discipline int NOT NULL,
    room int NOT NULL,
    time int NOT NULL,
    CONSTRAINT "lesson_pk" PRIMARY KEY ("id"),
    CONSTRAINT FK_0 FOREIGN KEY (weekday) REFERENCES weekdays ("id"),
    CONSTRAINT FK_1 FOREIGN KEY (time) REFERENCES lesson_times ("id"),
    CONSTRAINT FK_2 FOREIGN KEY (discipline) REFERENCES disciplines ("id"),
    CONSTRAINT FK_3 FOREIGN KEY (teacher) REFERENCES teachers ("id"),
    CONSTRAINT FK_4 FOREIGN KEY (room) REFERENCES rooms ("id")
);
CREATE TABLE lessonGroups (
    "group" int NOT NULL,
    lesson int NOT NULL,
    CONSTRAINT "lessonGroup_pk" PRIMARY KEY ("group", lesson),
    CONSTRAINT FK_6 FOREIGN KEY (lesson) REFERENCES lesson ("id"),
    CONSTRAINT FK_7 FOREIGN KEY ("group") REFERENCES groups ("id")
);
CREATE INDEX F_1 ON lessonGroups (lesson);
CREATE INDEX F_2 ON lessonGroups ("group");
CREATE INDEX FK_2 ON lesson (weekday);
CREATE INDEX FK_3 ON lesson (discipline);
CREATE INDEX FK_4 ON lesson (teacher);
CREATE INDEX FK_5 ON lesson (room);



    