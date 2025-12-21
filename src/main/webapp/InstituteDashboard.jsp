<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Institute Dashboard - Academia Nexus</title>
        <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/128/2997/2997295.png">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Playfair+Display:wght@700&display=swap"
            rel="stylesheet">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <style>
            :root {
                --primary-color: #059669;
                --secondary-color: #047857;
                --accent-color: #10b981;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Inter', sans-serif;
                background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
                min-height: 100vh;
                padding: 20px;
            }

            .dashboard-container {
                max-width: 1400px;
                margin: 0 auto;
            }

            .dashboard-header {
                background: white;
                border-radius: 20px;
                padding: 2rem;
                margin-bottom: 2rem;
                box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            }

            .welcome-text {
                font-family: 'Playfair Display', serif;
                font-size: 2.5rem;
                color: var(--secondary-color);
                margin-bottom: 0.5rem;
            }

            .latin-subtitle {
                font-style: italic;
                color: #6b7280;
                font-size: 1rem;
            }

            .dashboard-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
                gap: 1.5rem;
                margin-bottom: 2rem;
            }

            .dashboard-card {
                background: white;
                border-radius: 20px;
                padding: 2rem;
                box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
                border: 2px solid transparent;
            }

            .dashboard-card:hover {
                transform: translateY(-10px);
                border-color: var(--primary-color);
                box-shadow: 0 20px 60px rgba(5, 150, 105, 0.2);
            }

            .card-icon {
                width: 70px;
                height: 70px;
                background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
                border-radius: 16px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 1.5rem;
                font-size: 2rem;
                color: white;
            }

            .card-title {
                font-family: 'Playfair Display', serif;
                font-size: 1.5rem;
                color: var(--secondary-color);
                margin-bottom: 0.5rem;
            }

            .card-description {
                color: #6b7280;
                margin-bottom: 1.5rem;
                font-size: 0.95rem;
            }

            .card-btn {
                background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
                color: white;
                border: none;
                padding: 0.75rem 1.5rem;
                border-radius: 12px;
                font-weight: 600;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s ease;
            }

            .card-btn:hover {
                transform: translateY(-2px);
                box-shadow: 0 10px 30px rgba(5, 150, 105, 0.3);
                color: white;
            }

            .logout-section {
                text-align: center;
            }

            .logout-btn {
                background: linear-gradient(135deg, #dc2626, #b91c1c);
                color: white;
                border: none;
                padding: 1rem 3rem;
                border-radius: 12px;
                font-weight: 600;
                font-size: 1.1rem;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s ease;
            }

            .logout-btn:hover {
                transform: translateY(-2px);
                box-shadow: 0 10px 30px rgba(220, 38, 38, 0.3);
                color: white;
            }

            @media (max-width: 768px) {
                .welcome-text {
                    font-size: 2rem;
                }

                .dashboard-grid {
                    grid-template-columns: 1fr;
                }
            }
        </style>
    </head>

    <body>
        <div class="dashboard-container">
            <div class="dashboard-header">
                <h1 class="welcome-text">Institute Dashboard</h1>
                <p class="latin-subtitle">Docere et Crescere - To Teach and To Grow</p>
            </div>

            <div class="dashboard-grid">
                <div class="dashboard-card">
                    <div class="card-icon">
                        <i class="fas fa-edit"></i>
                    </div>
                    <h3 class="card-title">Update Profile</h3>
                    <p class="card-description">Manage your institution's information and details</p>
                    <a href="UpdateInstitute.jsp" class="card-btn">
                        <i class="fas fa-arrow-right me-2"></i>Proceed
                    </a>
                </div>

                <div class="dashboard-card">
                    <div class="card-icon">
                        <i class="fas fa-book"></i>
                    </div>
                    <h3 class="card-title">Add Course</h3>
                    <p class="card-description">Create new courses for your institution</p>
                    <a href="AddNewCourse.jsp" class="card-btn">
                        <i class="fas fa-arrow-right me-2"></i>Proceed
                    </a>
                </div>

                <div class="dashboard-card">
                    <div class="card-icon">
                        <i class="fas fa-chalkboard-teacher"></i>
                    </div>
                    <h3 class="card-title">Add Faculty</h3>
                    <p class="card-description">Register new faculty members to your institution</p>
                    <a href="AddingNewFaculty.jsp" class="card-btn">
                        <i class="fas fa-arrow-right me-2"></i>Proceed
                    </a>
                </div>

                <div class="dashboard-card">
                    <div class="card-icon">
                        <i class="fas fa-inbox"></i>
                    </div>
                    <h3 class="card-title">View Requests</h3>
                    <p class="card-description">Review student admission requests</p>
                    <a href="ViewRequest.jsp" class="card-btn">
                        <i class="fas fa-arrow-right me-2"></i>Proceed
                    </a>
                </div>

                <div class="dashboard-card">
                    <div class="card-icon">
                        <i class="fas fa-comment-dots"></i>
                    </div>
                    <h3 class="card-title">View Feedback</h3>
                    <p class="card-description">See student feedback about your institution</p>
                    <a href="ViewFeedback.jsp" class="card-btn">
                        <i class="fas fa-arrow-right me-2"></i>Proceed
                    </a>
                </div>

                <div class="dashboard-card">
                    <div class="card-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h3 class="card-title">View Students</h3>
                    <p class="card-description">Access enrolled student information</p>
                    <a href="ViewStudent.jsp" class="card-btn">
                        <i class="fas fa-arrow-right me-2"></i>Proceed
                    </a>
                </div>
            </div>

            <div class="logout-section">
                <a href="Logout.jsp" class="logout-btn">
                    <i class="fas fa-sign-out-alt me-2"></i>Logout
                </a>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>