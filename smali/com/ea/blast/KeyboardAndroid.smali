.class abstract Lcom/ea/blast/KeyboardAndroid;
.super Ljava/lang/Object;
.source "KeyboardAndroid.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final IsSystemKey(I)Z
    .locals 1
    .param p0, "androidKey"    # I

    .prologue
    .line 47
    sparse-switch p0, :sswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static final IsVirtualKeyboardEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native NativeOnCharacter(II)V
.end method

.method private native NativeOnKeyDown(III)V
.end method

.method private native NativeOnKeyUp(III)V
.end method

.method private native NativeOnKeyboardVisibilityChanged(IZ)V
.end method

.method private native NativeOnNavigationVisibilityChanged(IZ)V
.end method


# virtual methods
.method abstract GetModuleId()I
.end method

.method protected NativeOnCharacter(I)V
    .locals 1
    .param p1, "unicodeChar"    # I

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ea/blast/KeyboardAndroid;->NativeOnCharacter(II)V

    .line 22
    return-void
.end method

.method protected NativeOnKeyDown(IZ)V
    .locals 2
    .param p1, "androidKey"    # I
    .param p2, "altPressed"    # Z

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/ea/blast/KeyboardAndroid;->NativeOnKeyDown(III)V

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected NativeOnKeyUp(IZ)V
    .locals 2
    .param p1, "androidKey"    # I
    .param p2, "altPressed"    # Z

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/ea/blast/KeyboardAndroid;->NativeOnKeyUp(III)V

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected NativeOnKeyboardVisibilityChanged(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ea/blast/KeyboardAndroid;->NativeOnKeyboardVisibilityChanged(IZ)V

    .line 37
    return-void
.end method

.method protected NativeOnNavigationVisibilityChanged(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ea/blast/KeyboardAndroid;->NativeOnNavigationVisibilityChanged(IZ)V

    .line 42
    return-void
.end method
