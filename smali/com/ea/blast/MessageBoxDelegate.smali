.class public Lcom/ea/blast/MessageBoxDelegate;
.super Ljava/lang/Object;
.source "MessageBoxDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final kMessageBoxTypeIconError:I

.field private static final kMessageBoxTypeIconInformation:I

.field private static final kMessageBoxTypeIconQuestion:I

.field private static final kMessageBoxTypeIconWarning:I


# instance fields
.field private mButton1:Ljava/lang/String;

.field private mButton2:Ljava/lang/String;

.field private mButton3:Ljava/lang/String;

.field private mButtonCount:I

.field private mClickedIndex:I

.field private mCurrentThread:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconWarning()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconWarning:I

    .line 35
    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconInfo()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconInformation:I

    .line 36
    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconQuestion()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconQuestion:I

    .line 37
    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconError()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native NativeGetMessageBoxTypeIconError()I
.end method

.method public static native NativeGetMessageBoxTypeIconInfo()I
.end method

.method public static native NativeGetMessageBoxTypeIconQuestion()I
.end method

.method public static native NativeGetMessageBoxTypeIconWarning()I
.end method

.method static synthetic access$000(Lcom/ea/blast/MessageBoxDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/MessageBoxDelegate;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ea/blast/MessageBoxDelegate;->createMessage()V

    return-void
.end method

.method private createMessage()V
    .locals 8

    .prologue
    .line 42
    const/4 v4, -0x1

    iput v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 46
    iget-object v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    iget-object v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    iget v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mType:I

    int-to-long v4, v4

    const-wide v6, 0xfffffff0L

    and-long v2, v4, v6

    .line 51
    .local v2, "type":J
    sget v4, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconWarning:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 52
    :cond_0
    sget v4, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconInformation:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const v4, 0x108009b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 53
    :cond_1
    sget v4, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconQuestion:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    const v4, 0x1080040

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 54
    :cond_2
    sget v4, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconError:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    const v4, 0x108001d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 56
    :cond_3
    iget v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    if-lez v4, :cond_4

    .line 57
    iget-object v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton1:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    :cond_4
    iget v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 59
    iget-object v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton2:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    :cond_5
    iget v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_6

    .line 61
    iget-object v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton3:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 65
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/blast/MessageBoxDelegate;->mCurrentThread:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 69
    const/4 v4, -0x2

    iput v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    .line 71
    :cond_7
    return-void
.end method


# virtual methods
.method public JavaMessageBox(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "buttonCount"    # I
    .param p5, "button1"    # Ljava/lang/String;
    .param p6, "button2"    # Ljava/lang/String;
    .param p7, "button3"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mCurrentThread:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mTitle:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/ea/blast/MessageBoxDelegate;->mText:Ljava/lang/String;

    .line 78
    iput p3, p0, Lcom/ea/blast/MessageBoxDelegate;->mType:I

    .line 79
    iput-object p5, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton1:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton2:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton3:Ljava/lang/String;

    .line 82
    iput p4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    .line 83
    iput v4, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    .line 85
    new-instance v1, Lcom/ea/blast/MessageBoxDelegate$1;

    invoke-direct {v1, p0}, Lcom/ea/blast/MessageBoxDelegate$1;-><init>(Lcom/ea/blast/MessageBoxDelegate;)V

    iput-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mRunnable:Ljava/lang/Runnable;

    .line 93
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    :goto_0
    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    if-ne v1, v4, :cond_0

    .line 98
    :try_start_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1}, Lcom/ea/blast/MainActivity;->IsActivitySuspended()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    return v1

    .line 102
    :cond_1
    const-wide/16 v2, 0x19

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 114
    packed-switch p2, :pswitch_data_0

    .line 127
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    return-void

    .line 117
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    .line 120
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    .line 123
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
