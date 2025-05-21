CREATE TABLE owners (
    owner_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    email VARCHAR2(100),
    department VARCHAR2(100)
);

CREATE TABLE datasets (
    dataset_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    description VARCHAR2(300),
    source_system VARCHAR2(100),
    created_at DATE,
    owner_id NUMBER REFERENCES owners(owner_id)
);

CREATE TABLE tables (
    table_id NUMBER PRIMARY KEY,
    dataset_id NUMBER REFERENCES datasets(dataset_id),
    name VARCHAR2(100),
    record_count NUMBER,
    last_updated DATE
);

CREATE TABLE columns (
    column_id NUMBER PRIMARY KEY,
    table_id NUMBER REFERENCES tables(table_id),
    name VARCHAR2(100),
    data_type VARCHAR2(50),
    nullable CHAR(1),
    description VARCHAR2(300)
);

CREATE TABLE lineage (
    id NUMBER PRIMARY KEY,
    source_table_id NUMBER REFERENCES tables(table_id),
    target_table_id NUMBER REFERENCES tables(table_id),
    process_description VARCHAR2(300)
);

CREATE TABLE access_logs (
    log_id NUMBER PRIMARY KEY,
    user_email VARCHAR2(100),
    table_id NUMBER REFERENCES tables(table_id),
    access_time TIMESTAMP
);
