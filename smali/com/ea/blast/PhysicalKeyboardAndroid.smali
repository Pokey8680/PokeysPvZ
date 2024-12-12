.class Lcom/ea/blast/PhysicalKeyboardAndroid;
.super Lcom/ea/blast/KeyboardAndroid;
.source "PhysicalKeyboardAndroid.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/PhysicalKeyboard"


# instance fields
.field private mNavigationVisibility:I

.field private mPhysicalKeyboardVisibility:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/ea/blast/KeyboardAndroid;-><init>()V

    .line 15
    iput v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mPhysicalKeyboardVisibility:I

    .line 18
    iput v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mNavigationVisibility:I

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method


# virtual methods
.method GetModuleId()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdPhysicalKeyboard:I

    return v0
.end method

.method protected OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "physical keyboard OnKeyDown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/PhysicalKeyboardAndroid;->Log(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->IsSystemKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyDown(IZ)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyDown(IZ)V

    .line 52
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "physical keyboard OnKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->Log(Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->IsSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyUp(IZ)V

    .line 69
    const/4 v1, 0x0

    .line 83
    :goto_0
    return v1

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyUp(IZ)V

    .line 77
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 78
    .local v0, "unicodeChar":I
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0, v0}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnCharacter(I)V

    .line 83
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mPhysicalKeyboardVisibility:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_0

    .line 93
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mPhysicalKeyboardVisibility:I

    .line 111
    :cond_0
    iget v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mNavigationVisibility:I

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v0, v1, :cond_1

    .line 113
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v0, :pswitch_data_1

    .line 128
    :goto_1
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mNavigationVisibility:I

    .line 130
    :cond_1
    return-void

    .line 96
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyboardVisibilityChanged(Z)V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyboardVisibilityChanged(Z)V

    goto :goto_0

    .line 116
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnNavigationVisibilityChanged(Z)V

    goto :goto_1

    .line 120
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnNavigationVisibilityChanged(Z)V

    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 113
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
