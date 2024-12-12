.class Lcom/ea/blast/TouchSurfaceAndroid;
.super Ljava/lang/Object;
.source "TouchSurfaceAndroid.java"


# static fields
.field protected static final kIdRawPointerCancel:I

.field protected static final kIdRawPointerDown:I

.field protected static final kIdRawPointerMove:I

.field protected static final kIdRawPointerUp:I

.field protected static final kIdUndefined:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdUndefined()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    .line 17
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerCancel()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerCancel:I

    .line 18
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerDown()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    .line 19
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerMove()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerMove:I

    .line 20
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerUp()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsTouchScreenMultiTouch()Z
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static native NativeGetIdRawPointerCancel()I
.end method

.method protected static native NativeGetIdRawPointerDown()I
.end method

.method protected static native NativeGetIdRawPointerMove()I
.end method

.method protected static native NativeGetIdRawPointerUp()I
.end method

.method protected static native NativeGetIdUndefined()I
.end method

.method protected static native NativeOnPointerEvent(IIIFF)V
.end method
