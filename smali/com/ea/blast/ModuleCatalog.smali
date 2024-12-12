.class abstract Lcom/ea/blast/ModuleCatalog;
.super Ljava/lang/Object;
.source "ModuleCatalog.java"


# static fields
.field protected static final kModuleTypeIdAccelerometer:I

.field protected static final kModuleTypeIdCompass:I

.field protected static final kModuleTypeIdDisplay:I

.field protected static final kModuleTypeIdGyroscope:I

.field protected static final kModuleTypeIdInvalid:I

.field protected static final kModuleTypeIdMouse:I

.field protected static final kModuleTypeIdPhysicalKeyboard:I

.field protected static final kModuleTypeIdTouchPad:I

.field protected static final kModuleTypeIdTouchScreen:I

.field protected static final kModuleTypeIdVirtualKeyboard:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdInvalid()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdInvalid:I

    .line 20
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdAccelerometer()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdAccelerometer:I

    .line 21
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdCompass()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdCompass:I

    .line 22
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdDisplay()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdDisplay:I

    .line 23
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdGyroscope()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdGyroscope:I

    .line 24
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdMouse()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    .line 25
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdPhysicalKeyboard()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdPhysicalKeyboard:I

    .line 26
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdTouchPad()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    .line 27
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdTouchScreen()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    .line 28
    invoke-static {}, Lcom/ea/blast/ModuleCatalog;->NativeGetModuleTypeIdVirtualKeyboard()I

    move-result v0

    sput v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdVirtualKeyboard:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native NativeGetModuleTypeIdAccelerometer()I
.end method

.method protected static native NativeGetModuleTypeIdCompass()I
.end method

.method protected static native NativeGetModuleTypeIdDisplay()I
.end method

.method protected static native NativeGetModuleTypeIdGyroscope()I
.end method

.method protected static native NativeGetModuleTypeIdInvalid()I
.end method

.method protected static native NativeGetModuleTypeIdMouse()I
.end method

.method protected static native NativeGetModuleTypeIdPhysicalKeyboard()I
.end method

.method protected static native NativeGetModuleTypeIdTouchPad()I
.end method

.method protected static native NativeGetModuleTypeIdTouchScreen()I
.end method

.method protected static native NativeGetModuleTypeIdVirtualKeyboard()I
.end method
