.class public Lcom/ea/blast/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/MainActivity$LifeCycleState;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/MainActivity"

.field protected static activityExists:Z

.field protected static activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

.field public static instance:Lcom/ea/blast/MainActivity;

.field public static volatile mFrameLayout:Landroid/widget/FrameLayout;

.field public static mPendingNFCList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationOrientation:I

.field public mGLView:Lcom/ea/blast/MainView;

.field private mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

.field private mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    const-string v1, "com.ea.blast.LibGnuStlSharedEnabled"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    const-string v1, "EAMCore/MainActivity"

    const-string v2, "Loading the GNU stdc++ library."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "gnustl_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ea/blast/MainActivity;->activityExists:Z

    .line 81
    sget-object v1, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v1, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    return-void

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 49
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EAMCore/MainActivity"

    const-string v2, "The GNU stdc++ library is not enabled in the build."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    .line 335
    new-instance v0, Lcom/ea/blast/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/ea/blast/MainActivity$1;-><init>(Lcom/ea/blast/MainActivity;)V

    iput-object v0, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 617
    return-void
.end method

.method private ForceHideVirtualKeyboard()V
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 312
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 316
    return-void
.end method

.method public static GetInstance()Lcom/ea/blast/MainActivity;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    return-object v0
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 533
    return-void
.end method

.method private SetCommonPreferences()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x3

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->requestWindowFeature(I)Z

    .line 512
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 515
    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->setVolumeControlStream(I)V

    .line 518
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 519
    return-void
.end method

.method private initEAIO()V
    .locals 6

    .prologue
    .line 560
    :try_start_0
    const-string v1, "com.ea.EAIO.EAIO"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Startup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to initialize EAIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initEAMIO()V
    .locals 6

    .prologue
    .line 588
    :try_start_0
    const-string v1, "com.ea.EAMIO.StorageDirectory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Startup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception: Unable to initialize EAMIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initEAThread()V
    .locals 4

    .prologue
    .line 540
    :try_start_0
    const-string v1, "com.ea.EAThread.EAThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Init"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to initialize EAThread using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private shutdownEAIO()V
    .locals 4

    .prologue
    .line 574
    :try_start_0
    const-string v1, "com.ea.EAIO.EAIO"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Shutdown"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception: Unable to shutdown EAIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private shutdownEAMIO()V
    .locals 4

    .prologue
    .line 602
    :try_start_0
    const-string v1, "com.ea.EAMIO.StorageDirectory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Shutdown"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception: Unable to shutdown EAMIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private shutdownEAThread()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method


# virtual methods
.method public IsActivityStopped()Z
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    sget-object v1, Lcom/ea/blast/MainActivity$LifeCycleState;->Stopped:Lcom/ea/blast/MainActivity$LifeCycleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsActivitySuspended()Z
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    sget-object v1, Lcom/ea/blast/MainActivity$LifeCycleState;->Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsAppInstalledOnSdCard()Z
    .locals 7

    .prologue
    const/high16 v6, 0x40000

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 323
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 324
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_0

    const/4 v3, 0x1

    .line 332
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 326
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public native NativeGetExitCode()I
.end method

.method public native NativeOnBackPressed()V
.end method

.method public native NativeOnCreate()V
.end method

.method public native NativeOnLowMemory()V
.end method

.method public native NativeOnOrientationChanged()V
.end method

.method public native NativeOnPause()V
.end method

.method public native NativeOnResume(Z)V
.end method

.method public native NativeOnStop()V
.end method

.method public native NativeOnWindowFocusChanged(Z)V
.end method

.method public native NativeOsExit()V
.end method

.method protected ProcessNearFieldCommunicationIntent()V
    .locals 5

    .prologue
    .line 201
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 203
    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 206
    .local v2, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v2, :cond_1

    .line 209
    array-length v3, v2

    new-array v1, v3, [Landroid/nfc/NdefMessage;

    .line 210
    .local v1, "msgs":[Landroid/nfc/NdefMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 212
    aget-object v3, v2, v0

    check-cast v3, Landroid/nfc/NdefMessage;

    aput-object v3, v1, v0

    .line 213
    sget-object v3, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ea/blast/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 219
    .end local v0    # "i":I
    .end local v1    # "msgs":[Landroid/nfc/NdefMessage;
    .end local v2    # "rawMsgs":[Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method public getDisplayHeight()I
    .locals 5

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 461
    .local v1, "height":I
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "model":Ljava/lang/String;
    const-string v3, "SM-N915"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 464
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 465
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 473
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current display height= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 475
    return v1

    .line 467
    :cond_1
    sget-object v3, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 469
    sget-object v3, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getDisplayWidth()I
    .locals 3

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "width":I
    sget-object v1, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 441
    sget-object v1, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current display width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 446
    return v0
.end method

.method public getNaturalOrientation()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 482
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 483
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 486
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 487
    .local v3, "displayOrientation":I
    if-eq v3, v6, :cond_0

    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    :cond_0
    move v4, v6

    .line 490
    .local v4, "displayRotated":Z
    :goto_0
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v7, v8, :cond_4

    move v0, v6

    .line 493
    .local v0, "currentlyPortrait":Z
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-nez v0, :cond_5

    if-eqz v4, :cond_5

    .line 495
    :cond_2
    const-string v5, "The device natural orientation is portrait."

    invoke-direct {p0, v5}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 501
    :goto_2
    return v6

    .end local v0    # "currentlyPortrait":Z
    .end local v4    # "displayRotated":Z
    :cond_3
    move v4, v5

    .line 487
    goto :goto_0

    .restart local v4    # "displayRotated":Z
    :cond_4
    move v0, v5

    .line 490
    goto :goto_1

    .line 500
    .restart local v0    # "currentlyPortrait":Z
    :cond_5
    const-string v6, "The device natural orientation is landscape."

    invoke-direct {p0, v6}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    move v6, v5

    .line 501
    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnBackPressed()V

    .line 378
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 414
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    iget v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 421
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    .line 422
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnOrientationChanged()V

    .line 424
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string v1, "onCreate..."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 124
    sget-boolean v1, Lcom/ea/blast/MainActivity;->activityExists:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOsExit()V

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 178
    :goto_0
    const-string v1, "...onCreate"

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 179
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->SetCommonPreferences()V

    .line 135
    sput-object p0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    .line 138
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getNaturalOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->setRequestedOrientation(I)V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->initEAThread()V

    .line 146
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->initEAIO()V

    .line 147
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->initEAMIO()V

    .line 150
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnCreate()V

    .line 153
    new-instance v1, Lcom/ea/blast/MainView;

    invoke-direct {v1, p0}, Lcom/ea/blast/MainView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    .line 154
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1, v3}, Lcom/ea/blast/MainView;->setFocusable(Z)V

    .line 155
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1, v3}, Lcom/ea/blast/MainView;->setFocusableInTouchMode(Z)V

    .line 157
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 161
    sget-object v1, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 163
    sget-object v1, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->setContentView(Landroid/view/View;)V

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 168
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ea/blast/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    new-instance v1, Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-direct {v1}, Lcom/ea/blast/PhysicalKeyboardAndroid;-><init>()V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    .line 174
    new-instance v1, Lcom/ea/blast/MotionEventAndroid;

    invoke-direct {v1}, Lcom/ea/blast/MotionEventAndroid;-><init>()V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

    .line 175
    sput-boolean v3, Lcom/ea/blast/MainActivity;->activityExists:Z

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "onDestroy..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOsExit()V

    .line 277
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->shutdownEAMIO()V

    .line 278
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->shutdownEAIO()V

    .line 280
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onDestroy()V

    .line 283
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->shutdownEAThread()V

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 287
    const-string v0, "...onDestroy"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeGetExitCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 289
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MotionEventAndroid;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 393
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 360
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 368
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 369
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 302
    const-string v0, "onLowMemory"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnLowMemory()V

    .line 304
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "onPause..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 242
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "........... PVZ mainactivity onPause() ........ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    .line 244
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->ForceHideVirtualKeyboard()V

    .line 245
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnPause()V

    .line 246
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onPause()V

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 248
    const-string v0, "...onPause"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "onResume..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "........... PVZ mainactivity onResume() ........ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 229
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->ProcessNearFieldCommunicationIntent()V

    .line 230
    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    .line 231
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->NativeOnResume(Z)V

    .line 232
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onResume()V

    .line 233
    const-string v0, "...onResume"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 405
    const-string v0, "onSaveInstanceState"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 256
    const-string v0, "onStop..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Stopped:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 259
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnStop()V

    .line 260
    const-string v0, "...onStop"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MotionEventAndroid;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 295
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->NativeOnWindowFocusChanged(Z)V

    .line 297
    return-void
.end method
