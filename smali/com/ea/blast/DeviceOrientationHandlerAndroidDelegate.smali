.class public Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;
.super Landroid/view/OrientationEventListener;
.source "DeviceOrientationHandlerAndroidDelegate.java"


# static fields
.field private static final kOrientationBottomSideUp:I

.field private static final kOrientationFrontSideUp:I

.field private static final kOrientationLeftSideUp:I

.field private static final kOrientationRightSideUp:I

.field private static final kOrientationTopSideUp:I

.field private static final kOrientationUnknown:I

.field private static final kThreshold:I = 0x1e


# instance fields
.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationUnknown()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationUnknown:I

    .line 23
    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationTopSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationTopSideUp:I

    .line 24
    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationLeftSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationLeftSideUp:I

    .line 25
    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationRightSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationRightSideUp:I

    .line 26
    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationBottomSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationBottomSideUp:I

    .line 27
    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationFrontSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationFrontSideUp:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-direct {p0, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 40
    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationUnknown:I

    iput v0, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    .line 41
    return-void
.end method

.method public static native NativeGetDeviceOrientationBottomSideUp()I
.end method

.method public static native NativeGetDeviceOrientationFrontSideUp()I
.end method

.method public static native NativeGetDeviceOrientationLeftSideUp()I
.end method

.method public static native NativeGetDeviceOrientationRightSideUp()I
.end method

.method public static native NativeGetDeviceOrientationTopSideUp()I
.end method

.method public static native NativeGetDeviceOrientationUnknown()I
.end method

.method public static native NativeOnDeviceOrientationChange(I)V
.end method

.method private UpdateOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 93
    invoke-static {p1}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeOnDeviceOrientationChange(I)V

    .line 94
    iput p1, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method OnLifeCycleFocusGained()V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationUnknown:I

    iput v0, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    .line 48
    return-void
.end method

.method SetEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->enable()V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->disable()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "angle"    # I

    .prologue
    .line 65
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 67
    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationFrontSideUp:I

    invoke-direct {p0, v0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/16 v0, 0x14a

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_3

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_3

    .line 71
    :cond_2
    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationTopSideUp:I

    invoke-direct {p0, v0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_0

    .line 73
    :cond_3
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_4

    const/16 v0, 0x78

    if-gt p1, v0, :cond_4

    .line 75
    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationLeftSideUp:I

    invoke-direct {p0, v0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_0

    .line 77
    :cond_4
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_5

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_5

    .line 79
    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationRightSideUp:I

    invoke-direct {p0, v0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_0

    .line 81
    :cond_5
    const/16 v0, 0x96

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_0

    .line 83
    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationBottomSideUp:I

    invoke-direct {p0, v0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_0
.end method
