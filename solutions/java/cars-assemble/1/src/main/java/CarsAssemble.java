public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        if (speed == 10) {
            return (speed * 221) * 0.77;
        } else if (speed == 9) {
            return (speed * 221) * 0.80;
        } else if (speed > 4) {
            return (speed * 221) * 0.90;
        } else {
            return (speed * 221);
        }
    }

    public int workingItemsPerMinute(int speed) {
        return ((int) productionRatePerHour(speed)) / 60;
    }
}
