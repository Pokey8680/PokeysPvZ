.class Lcom/ea/blast/MouseAndroid;
.super Ljava/lang/Object;
.source "MouseAndroid.java"


# static fields
.field protected static final kIdRawMouseDown:I

.field protected static final kIdRawMouseMove:I

.field protected static final kIdRawMouseUp:I

.field protected static final kIdUndefined:I

.field protected static final kMouseButtonCenter:I

.field protected static final kMouseButtonLeft:I

.field protected static final kMouseButtonNone:I

.field protected static final kMouseButtonRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetIdRawMouseDown()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseDown:I

    .line 19
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetIdRawMouseMove()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseMove:I

    .line 20
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetIdRawMouseUp()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseUp:I

    .line 21
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetIdUndefined()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kIdUndefined:I

    .line 23
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetMouseButtonLeft()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonLeft:I

    .line 24
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetMouseButtonRight()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonRight:I

    .line 25
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetMouseButtonCenter()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonCenter:I

    .line 26
    invoke-static {}, Lcom/ea/blast/MouseAndroid;->NativeGetMouseButtonNone()I

    move-result v0

    sput v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonNone:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native NativeGetIdRawMouseDown()I
.end method

.method protected static native NativeGetIdRawMouseMove()I
.end method

.method protected static native NativeGetIdRawMouseUp()I
.end method

.method protected static native NativeGetIdUndefined()I
.end method

.method protected static native NativeGetMouseButtonCenter()I
.end method

.method protected static native NativeGetMouseButtonLeft()I
.end method

.method protected static native NativeGetMouseButtonNone()I
.end method

.method protected static native NativeGetMouseButtonRight()I
.end method

.method protected static native NativeOnMouseEvent(IIIIIFF)V
.end method
