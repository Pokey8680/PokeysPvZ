.class public Lcom/ea/blast/AccelerometerAndroidDelegate;
.super Ljava/lang/Object;
.source "AccelerometerAndroidDelegate.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field mEnabled:Z

.field mSensor:Landroid/hardware/Sensor;

.field mSensorDelay:I

.field mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mEnabled:Z

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensorDelay:I

    .line 39
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    iget-object v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensor:Landroid/hardware/Sensor;

    .line 41
    return-void
.end method


# virtual methods
.method public native NativeOnAcceleration(FFF)V
.end method

.method SetEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensorDelay:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    :goto_0
    iput-boolean p1, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mEnabled:Z

    .line 70
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method SetUpdateFrequency(I)V
    .locals 1
    .param p1, "sensorDelay"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mSensorDelay:I

    .line 49
    iget-boolean v0, p0, Lcom/ea/blast/AccelerometerAndroidDelegate;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/blast/AccelerometerAndroidDelegate;->SetEnabled(Z)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ea/blast/AccelerometerAndroidDelegate;->SetEnabled(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 82
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ea/blast/AccelerometerAndroidDelegate;->NativeOnAcceleration(FFF)V

    .line 83
    return-void
.end method
