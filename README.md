# 🚀 Lead Accelerator

Lead Accelerator is a full-stack lead generation tool designed to automate the process of finding professional email addresses from a list of companies. It leverages the **Hunter.io API** to perform domain searches and stores the results in a **PostgreSQL** database.

---

## ✨ Features

* **File Upload**: Supports both `.csv` and Excel (`.xlsx`, `.xls`) file formats for processing company lists.
* **Automated Email Discovery**: Integrates with the Hunter.io API to fetch emails, confidence scores, and contact names.
* **Intelligent Fallback**: If no emails are found via API or credits are exhausted, the system generates common patterns like `info@`, `contact@`, and `sales@`.
* **Data Persistence**: Every processed lead is saved to a PostgreSQL database with a unique `batch_id` for historical tracking.
* **Domain Filtering**: Automatically filters out generic domains like `gmail.com`, `yahoo.com`, and `hotmail.com` to ensure professional leads.
* **CSV Export**: Allows users to download a structured CSV report of any processed batch.
* **Modern UI**: A dark-themed, responsive dashboard featuring a progress bar and real-time result table.

---

## 🛠️ Tech Stack

* **Frontend**: HTML5, CSS3 (Inter Font), and Vanilla JavaScript.
* **Backend**: FastAPI (Python 3.10).
* **Database**: PostgreSQL with SQLAlchemy ORM.
* **API**: Hunter.io Domain Search & Account API.
* **DevOps**: Docker & Docker Compose.

---

## 📋 Prerequisites

* **Python 3.10+** (if running without Docker).
* **Docker & Docker Compose** (recommended).
* **Hunter.io API Key**: Required to fetch professional emails.

---

## 🚀 Getting Started

### 1. Environment Setup
Create a `.env` file in the root directory and configure your credentials:

```env
# Your Hunter API key
HUNTER_API_KEY = "your_api_key_here"

# Local Docker database URL
DATABASE_URL="postgresql://postgres:password@db:5432/leadgen_db"
