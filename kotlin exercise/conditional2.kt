fun main() {
    val hoursWorked = 45 
    val hourlyRate = 10.0 
    val regularHours = 40

    val regularPay = if (hoursWorked <= regularHours) {
        hoursWorked * hourlyRate
    } else {
        regularHours * hourlyRate
    }

    val overtimeHours = hoursWorked - regularHours
    val overtimePay = overtimeHours * hourlyRate * 1.5

    val totalSalary = regularPay + overtimePay
    println("Total Salary: $$totalSalary")
}