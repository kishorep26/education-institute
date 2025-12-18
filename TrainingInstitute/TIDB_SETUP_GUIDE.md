# TiDB Database Setup Guide

## Step 1: Access TiDB Cloud Console

1. Go to https://tidbcloud.com/
2. Log in to your account
3. Select your cluster: `gateway01.us-east-1.prod.aws.tidbcloud.com`

## Step 2: Connect to TiDB Using MySQL Client

You have two options:

### Option A: Use TiDB Cloud Web SQL Editor (Easiest)

1. In TiDB Cloud dashboard, click on your cluster
2. Click "Connect" button
3. Select "Web SQL Shell" or "SQL Editor"
4. Copy and paste the entire contents of `setup_tidb.sql`
5. Click "Run" or "Execute"

### Option B: Use MySQL Command Line

```bash
mysql -h gateway01.us-east-1.prod.aws.tidbcloud.com \
      -P 4000 \
      -u 4HkjARMfHQLz3AB.root \
      -p \
      -D test \
      --ssl-mode=REQUIRED
```

When prompted, enter password: `OjAyeaICf8MLDanS`

Then run:
```sql
source /path/to/setup_tidb.sql
```

Or copy-paste the SQL content directly.

### Option C: Use MySQL Workbench or DBeaver

1. Create new connection with these details:
   - Host: `gateway01.us-east-1.prod.aws.tidbcloud.com`
   - Port: `4000`
   - Username: `4HkjARMfHQLz3AB.root`
   - Password: `OjAyeaICf8MLDanS`
   - Database: `test`
   - SSL: Required/Enabled

2. Open `setup_tidb.sql` file
3. Execute the entire script

## Step 3: Verify Data Was Inserted

Run these queries to verify:

```sql
SELECT 'Admin Count:' as Info, COUNT(*) as Count FROM admin;
SELECT 'Institute Count:' as Info, COUNT(*) as Count FROM institute;
SELECT 'Student Count:' as Info, COUNT(*) as Count FROM student;
SELECT 'Course Count:' as Info, COUNT(*) as Count FROM course;
SELECT 'Faculty Count:' as Info, COUNT(*) as Count FROM faculty;
```

Expected results:
- Admin Count: 1
- Institute Count: 4
- Student Count: 5
- Course Count: 8
- Faculty Count: 8

## Step 4: Test Login Credentials

After running the SQL script, these credentials will work:

### Admin Login
- URL: `https://meta-app-0kr2.onrender.com/AdminLogin.jsp`
- Username: `admin`
- Password: `admin123`

### Student Logins
- URL: `https://meta-app-0kr2.onrender.com/StudentLogin.jsp`
- Username: `kish123` | Password: `kishore123`
- Username: `prathi123` | Password: `prathi123`
- Username: `prash123` | Password: `prash123`
- Username: `shilpa123` | Password: `shilpa123`
- Username: `shubha123` | Password: `shubha123`

### Institute Logins
- URL: `https://meta-app-0kr2.onrender.com/InstituteLogin.jsp`
- ID: `1` | Password: `AIT123`
- ID: `2` | Password: `BIT123`
- ID: `3` | Password: `CIT123`
- ID: `4` | Password: `DIT123`

## Troubleshooting

### If you get "Access Denied" error:
- Verify you're using the correct username format: `4HkjARMfHQLz3AB.root`
- Ensure SSL is enabled in your connection
- Check that you're connecting to the `test` database

### If tables already exist:
The script includes `DROP TABLE IF EXISTS` statements, so it will:
1. Drop all existing tables (in correct order to avoid foreign key errors)
2. Recreate them with fresh data

### If you want to add more data later:
You can add more students, courses, etc. by running INSERT statements like:

```sql
INSERT INTO student (userID, emailID, studentName, qualification, studentPassword, number, address) 
VALUES ('newuser', 'new@email.com', 'New Student', 'Qualification', 'password123', '+911234567890', 'Address');
```

## Database Schema Overview

```
admin (1 record)
  ↓
institute (4 records)
  ↓
  ├── course (8 records)
  ├── faculty (8 records)
  └── student (5 records)
      ├── admissionrequest (5 records)
      └── feedback (5 records)
```

All tables use proper foreign keys with CASCADE delete to maintain referential integrity.
