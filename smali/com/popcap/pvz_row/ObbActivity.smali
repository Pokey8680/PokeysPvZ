.class public Lcom/popcap/pvz_row/ObbActivity;
.super Landroid/app/Activity;
.source "ObbActivity.java"

# interfaces
.implements Lcom/popcap/pvz_row/IDownloaderClient;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final EXP_PATH:Ljava/lang/String; = "/Android/obb/"

.field static final LOGTAG:Ljava/lang/String; = "ObbActivity"

.field private static final LOG_TAG:Ljava/lang/String; = "PvZ"

.field static final NOTIFICATION_ID:I

.field public static PACKAGE_NAME:Ljava/lang/String; = null

.field static final REQUEST_ALL:I = 0x17


# instance fields
.field private final HideSystemKeys:Ljava/lang/Runnable;

.field private RLayout:Landroid/view/View;

.field private isFirstTime3GCheck:Z

.field private mCancel:Landroid/widget/Button;

.field private mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

.field private mEnableLogs:Z

.field public mInstance:Lcom/popcap/pvz_row/ObbActivity;

.field private mIsDownloading:Z

.field private mMessageText:Landroid/widget/TextView;

.field private mMessageView:Landroid/view/View;

.field private mOK:Landroid/widget/Button;

.field private mPause:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressText:Landroid/widget/TextView;

.field private mProgressTextSmall:Landroid/widget/TextView;

.field private mProgressView:Landroid/view/View;

.field private mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

.field private mShowingMessage:Z

.field private mState:I

.field private m_TotalDownloadSize:J

.field m_savedInstanceState:Landroid/os/Bundle;

.field private m_tools:Lcom/popcap/pvz_row/AndroidTools;

.field private mhasFocus:Z

.field myNotificationManager:Landroid/app/NotificationManager;

.field private pausedFor3GCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "ObbActivity"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/popcap/pvz_row/ObbActivity;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->isFirstTime3GCheck:Z

    .line 58
    iput-boolean v2, p0, Lcom/popcap/pvz_row/ObbActivity;->pausedFor3GCheck:Z

    .line 59
    iput-object v3, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/popcap/pvz_row/ObbActivity;->m_TotalDownloadSize:J

    .line 75
    iput-boolean v2, p0, Lcom/popcap/pvz_row/ObbActivity;->mIsDownloading:Z

    .line 76
    iput-boolean v2, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    .line 81
    iput-object v3, p0, Lcom/popcap/pvz_row/ObbActivity;->mInstance:Lcom/popcap/pvz_row/ObbActivity;

    .line 82
    iput-boolean v2, p0, Lcom/popcap/pvz_row/ObbActivity;->mhasFocus:Z

    .line 934
    new-instance v0, Lcom/popcap/pvz_row/ObbActivity$9;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/ObbActivity$9;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->HideSystemKeys:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz_row/ObbActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/popcap/pvz_row/ObbActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;
    .locals 1
    .param p0, "x0"    # Lcom/popcap/pvz_row/ObbActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/popcap/pvz_row/ObbActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/popcap/pvz_row/ObbActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mPause:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/popcap/pvz_row/ObbActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/popcap/pvz_row/ObbActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mhasFocus:Z

    return v0
.end method

.method static synthetic access$400(Lcom/popcap/pvz_row/ObbActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/ObbActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/popcap/pvz_row/ObbActivity;->onSystemUiVisibilityChanged()V

    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 568
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 569
    .local v0, "fileList":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 571
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/popcap/pvz_row/ObbActivity;->deleteFile(Ljava/io/File;)V

    .line 576
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "................ Inside "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/................"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "................"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "................"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 585
    :cond_2
    return-void
.end method

.method private explainPermissions([Ljava/lang/String;)V
    .locals 4
    .param p1, "permissionsArray"    # [Ljava/lang/String;

    .prologue
    .line 690
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/popcap/pvz_row/R$string;->permissions_explanation:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/popcap/pvz_row/R$string;->downloader_Continue:I

    new-instance v3, Lcom/popcap/pvz_row/ObbActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/popcap/pvz_row/ObbActivity$4;-><init>(Lcom/popcap/pvz_row/ObbActivity;[Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 705
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 706
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 712
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 710
    :cond_1
    const/16 v1, 0x17

    invoke-static {p0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getActivityPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 827
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PvZPackageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/popcap/pvz_row/ObbActivity;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    sget-object v0, Lcom/popcap/pvz_row/ObbActivity;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private onSystemUiVisibilityChanged()V
    .locals 4

    .prologue
    .line 928
    sget v1, Lcom/popcap/pvz_row/R$id;->OBBLayout:I

    invoke-virtual {p0, v1}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 930
    .local v0, "OBBLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/popcap/pvz_row/ObbActivity;->HideSystemKeys:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 932
    :cond_0
    return-void
.end method

.method private requestPermissions()V
    .locals 3

    .prologue
    .line 662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v1, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 677
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 678
    .local v0, "permissionsArray":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "permissionsArray":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 679
    .restart local v0    # "permissionsArray":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->explainPermissions([Ljava/lang/String;)V

    .line 686
    .end local v0    # "permissionsArray":[Ljava/lang/String;
    :goto_0
    return-void

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->checkAndDownloadFilesIfNeeded()V

    goto :goto_0
.end method

.method private setupSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 903
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->isAtLeastAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 907
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 910
    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->isAtLeastAPI(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz_row/ObbActivity$8;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/ObbActivity$8;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 924
    :cond_1
    return-void
.end method

.method private startDownload()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 767
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v6, "com.google"

    invoke-virtual {v0, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 769
    .local v3, "googleAccounts":[Landroid/accounts/Account;
    array-length v6, v3

    if-nez v6, :cond_0

    .line 771
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/popcap/pvz_row/R$string;->app_name:I

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/popcap/pvz_row/R$string;->FE_NO_GP_Account:I

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/popcap/pvz_row/ObbActivity$7;

    invoke-direct {v7, p0}, Lcom/popcap/pvz_row/ObbActivity$7;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/popcap/pvz_row/R$string;->downloader_Continue:I

    new-instance v8, Lcom/popcap/pvz_row/ObbActivity$6;

    invoke-direct {v8, p0}, Lcom/popcap/pvz_row/ObbActivity$6;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 793
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 794
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 823
    .end local v1    # "alertDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 800
    :cond_0
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 801
    .local v4, "notifierIntent":Landroid/content/Intent;
    const/high16 v6, 0x14000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 802
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-class v7, Lcom/popcap/pvz_row/PvZDownloaderService;

    invoke-static {p0, v6, v7}, Lcom/popcap/pvz_row/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v5

    .line 806
    .local v5, "startResult":I
    if-eqz v5, :cond_1

    .line 808
    const-string v6, "PvZ"

    const-string v7, ".............................Should start downloading!............................."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mIsDownloading:Z

    .line 810
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/popcap/pvz_row/ObbActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    .end local v4    # "notifierIntent":Landroid/content/Intent;
    .end local v5    # "startResult":I
    :catch_0
    move-exception v2

    .line 820
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PvZ"

    const-string v7, ".............................Cannot find package!............................."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 815
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "notifierIntent":Landroid/content/Intent;
    .restart local v5    # "startResult":I
    :cond_1
    :try_start_1
    const-string v6, "PvZ"

    const-string v7, ".............................No download required!............................."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public checkAndDownloadFilesIfNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 181
    iget-boolean v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v4, :cond_0

    .line 182
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "obbactivity checkAndDownloadFilesIfNeeded called "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->setupUI()V

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "dirExists":Z
    new-instance v4, Lcom/popcap/pvz_row/AndroidTools;

    iget-object v5, p0, Lcom/popcap/pvz_row/ObbActivity;->mInstance:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {v4, v5}, Lcom/popcap/pvz_row/AndroidTools;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    .line 186
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    invoke-virtual {v4}, Lcom/popcap/pvz_row/AndroidTools;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    invoke-virtual {v4}, Lcom/popcap/pvz_row/AndroidTools;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Expansion.indicate"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v3, "indicatorFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................Expansion.indicate does not exists ................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->copyFile()V

    .line 194
    invoke-direct {p0, v1}, Lcom/popcap/pvz_row/ObbActivity;->deleteFile(Ljava/io/File;)V

    .line 201
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 204
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................data directory exists ................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    const-string v5, "Copied"

    invoke-virtual {v4, v5}, Lcom/popcap/pvz_row/AndroidTools;->GetLoadinginfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "copied":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................Copied true hence files copied................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v6}, Lcom/popcap/pvz_row/ObbActivity;->expansionFilesDelivered(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................Main.obb present and hence launching Game Activity................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->startGameActivity()V

    .line 277
    .end local v0    # "copied":Ljava/lang/String;
    :goto_1
    return-void

    .line 199
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 216
    .restart local v0    # "copied":Ljava/lang/String;
    :cond_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................Copied true but Main not present hence downloading................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    const-class v4, Lcom/popcap/pvz_row/PvZDownloaderService;

    invoke-static {p0, v4}, Lcom/popcap/pvz_row/DownloaderClientMarshaller;->CreateStub(Lcom/popcap/pvz_row/IDownloaderClient;Ljava/lang/Class;)Lcom/popcap/pvz_row/IStub;

    move-result-object v4

    iput-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    .line 218
    invoke-direct {p0}, Lcom/popcap/pvz_row/ObbActivity;->startDownload()V

    goto :goto_1

    .line 224
    :cond_4
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................ Copied false Checking if main present ................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v6}, Lcom/popcap/pvz_row/ObbActivity;->expansionFilesDelivered(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................ Copied false But main is present. Launch game activity................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :try_start_0
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/popcap/pvz_row/AndroidTools;->writeloadedIndicate(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    :goto_2
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->startGameActivity()V

    goto :goto_1

    .line 241
    :cond_5
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................ Copied false, main not present hence downloading ................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    const-class v4, Lcom/popcap/pvz_row/PvZDownloaderService;

    invoke-static {p0, v4}, Lcom/popcap/pvz_row/DownloaderClientMarshaller;->CreateStub(Lcom/popcap/pvz_row/IDownloaderClient;Ljava/lang/Class;)Lcom/popcap/pvz_row/IStub;

    move-result-object v4

    iput-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    .line 243
    invoke-direct {p0}, Lcom/popcap/pvz_row/ObbActivity;->startDownload()V

    goto :goto_1

    .line 249
    .end local v0    # "copied":Ljava/lang/String;
    :cond_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................data directory does not exists ................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0, v6}, Lcom/popcap/pvz_row/ObbActivity;->expansionFilesDelivered(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 252
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................data directory does not exists main present hence Launching game ................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    :try_start_1
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/popcap/pvz_row/AndroidTools;->writeloadedIndicate(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_3
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->startGameActivity()V

    goto :goto_1

    .line 267
    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/popcap/pvz_row/AndroidTools;->writeloadedIndicate(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    :goto_4
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................data directory does not exists main not present hence downloading................"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    const-class v4, Lcom/popcap/pvz_row/PvZDownloaderService;

    invoke-static {p0, v4}, Lcom/popcap/pvz_row/DownloaderClientMarshaller;->CreateStub(Lcom/popcap/pvz_row/IDownloaderClient;Ljava/lang/Class;)Lcom/popcap/pvz_row/IStub;

    move-result-object v4

    iput-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    .line 274
    invoke-direct {p0}, Lcom/popcap/pvz_row/ObbActivity;->startDownload()V

    goto :goto_1

    .line 269
    :catch_0
    move-exception v4

    goto :goto_4

    .line 257
    :catch_1
    move-exception v4

    goto :goto_3

    .line 233
    .restart local v0    # "copied":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public copyFile()V
    .locals 14

    .prologue
    .line 591
    :try_start_0
    new-instance v13, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    invoke-virtual {v3}, Lcom/popcap/pvz_row/AndroidTools;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v13, "srcDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    iget-object v2, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    invoke-virtual {v2}, Lcom/popcap/pvz_row/AndroidTools;->getInternalDataDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v7, "dstDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 595
    .local v9, "fileList":[Ljava/io/File;
    new-instance v11, Ljava/io/File;

    iget-object v2, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    invoke-virtual {v2}, Lcom/popcap/pvz_row/AndroidTools;->getInternalDataDir()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrefCurApp.bin"

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v11, "prefCurApp":Ljava/io/File;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jags prefCurApp.exists................ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 599
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v2, v9

    if-ge v10, v2, :cond_2

    .line 601
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jags copying................count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 602
    aget-object v2, v9, v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "monopoly"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v9, v10

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    new-instance v12, Ljava/io/File;

    aget-object v2, v9, v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 605
    .local v12, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    invoke-virtual {v3}, Lcom/popcap/pvz_row/AndroidTools;->getInternalDataDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v10

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    .local v0, "dst":Ljava/io/File;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jags copying................"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v10

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 610
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 611
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 613
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jags copied................"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v10

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    if-eqz v1, :cond_0

    .line 616
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 618
    :cond_0
    if-eqz v6, :cond_1

    .line 619
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v0    # "dst":Ljava/io/File;
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local v12    # "src":Ljava/io/File;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 629
    .end local v7    # "dstDir":Ljava/io/File;
    .end local v9    # "fileList":[Ljava/io/File;
    .end local v10    # "i":I
    .end local v11    # "prefCurApp":Ljava/io/File;
    .end local v13    # "srcDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 631
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 634
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public disablePauseButton()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mPause:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 897
    return-void
.end method

.method expansionFilesDelivered(Z)Z
    .locals 8
    .param p1, "isMain"    # Z

    .prologue
    const/4 v3, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getVersionCode()I

    move-result v4

    invoke-static {p0, p1, v4}, Lcom/popcap/pvz_row/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "fileName":Ljava/lang/String;
    const-string v4, "PvZ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExpansionAPKFileName ............................."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "............................."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0x338c0e2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-wide/32 v0, 0x338c0e2

    .line 651
    .local v0, "assetSize":J
    invoke-static {p0, v2, v0, v1, v3}, Lcom/popcap/pvz_row/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 655
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 885
    :try_start_0
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 886
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 887
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PvZ"

    const-string v4, ".............................Cannot read value in manifest. Expected android:versionCode............................."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 844
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mShowingMessage:Z

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mMessageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iput-boolean v2, p0, Lcom/popcap/pvz_row/ObbActivity;->mShowingMessage:Z

    .line 850
    :cond_0
    return-void
.end method

.method public isAtLeastAPI(I)Z
    .locals 1
    .param p1, "apiLevel"    # I

    .prologue
    .line 960
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onCreate of ObbActivity ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 92
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 94
    iput-object p0, p0, Lcom/popcap/pvz_row/ObbActivity;->mInstance:Lcom/popcap/pvz_row/ObbActivity;

    .line 96
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/popcap/pvz_row/ObbActivity;->PACKAGE_NAME:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity;->m_savedInstanceState:Landroid/os/Bundle;

    .line 99
    invoke-direct {p0}, Lcom/popcap/pvz_row/ObbActivity;->requestPermissions()V

    .line 101
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onCreate of ObbActivity ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "obbactivity on Destroy called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    if-eqz v0, :cond_2

    .line 171
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "obbactivity on Destroy called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    invoke-interface {v0, p0}, Lcom/popcap/pvz_row/IStub;->disconnect(Landroid/content/Context;)V

    .line 177
    :cond_2
    return-void
.end method

.method public onDownloadProgress(Lcom/popcap/pvz_row/DownloadProgressInfo;)V
    .locals 12
    .param p1, "progress"    # Lcom/popcap/pvz_row/DownloadProgressInfo;

    .prologue
    .line 351
    const-string v6, "PvZ"

    const-string v7, "Download Progress ...........!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-boolean v6, p0, Lcom/popcap/pvz_row/ObbActivity;->isFirstTime3GCheck:Z

    if-eqz v6, :cond_0

    .line 357
    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/popcap/pvz_row/ObbActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 360
    .local v4, "manager":Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 362
    .local v3, "is3G":Z
    if-eqz v3, :cond_0

    .line 364
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/popcap/pvz_row/ObbActivity;->isFirstTime3GCheck:Z

    .line 365
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

    if-eqz v6, :cond_0

    .line 367
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/popcap/pvz_row/ObbActivity;->pausedFor3GCheck:Z

    .line 368
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

    invoke-interface {v6}, Lcom/popcap/pvz_row/IDownloaderService;->requestPauseDownload()V

    .line 369
    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Confirm3GNetwork:I

    invoke-virtual {p0, v6}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/popcap/pvz_row/R$string;->downloader_Continue:I

    sget v8, Lcom/popcap/pvz_row/R$string;->downloader_Quit:I

    invoke-virtual {p0, v6, v7, v8}, Lcom/popcap/pvz_row/ObbActivity;->showMessage(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v3    # "is3G":Z
    .end local v4    # "manager":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PvZ"

    const-string v7, ".............................error at 3G check............................."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/popcap/pvz_row/ObbActivity;->isFirstTime3GCheck:Z

    .line 378
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/popcap/pvz_row/ObbActivity;->pausedFor3GCheck:Z

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/high16 v2, 0x100000

    .line 383
    .local v2, "factorForSizeInMB":I
    iget-wide v6, p0, Lcom/popcap/pvz_row/ObbActivity;->m_TotalDownloadSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 385
    iget-wide v6, p1, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallTotal:J

    int-to-long v8, v2

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/popcap/pvz_row/ObbActivity;->m_TotalDownloadSize:J

    .line 389
    :cond_1
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-wide v8, p1, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallTotal:J

    const/16 v7, 0x8

    shr-long/2addr v8, v7

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 390
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-wide v8, p1, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallProgress:J

    const/16 v7, 0x8

    shr-long/2addr v8, v7

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 392
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressTextSmall:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallProgress:J

    int-to-long v10, v2

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB/ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/popcap/pvz_row/ObbActivity;->m_TotalDownloadSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-wide v6, p1, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v8, p1, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallTotal:J

    invoke-static {v6, v7, v8, v9}, Lcom/popcap/pvz_row/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "percentage":Ljava/lang/String;
    const-string v6, "[\\D]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "downloadSizeInPercentage":I
    if-ltz v0, :cond_2

    const/16 v6, 0x19

    if-ge v0, v6, :cond_2

    .line 401
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    sget v7, Lcom/popcap/pvz_row/R$string;->text_0_24:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 403
    :cond_2
    const/16 v6, 0x19

    if-lt v0, v6, :cond_3

    const/16 v6, 0x32

    if-ge v0, v6, :cond_3

    .line 406
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    sget v7, Lcom/popcap/pvz_row/R$string;->text_25_49:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 408
    :cond_3
    const/16 v6, 0x32

    if-lt v0, v6, :cond_4

    const/16 v6, 0x4b

    if-ge v0, v6, :cond_4

    .line 411
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    sget v7, Lcom/popcap/pvz_row/R$string;->text_50_74:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 413
    :cond_4
    const/16 v6, 0x4b

    if-lt v0, v6, :cond_5

    const/16 v6, 0x5f

    if-ge v0, v6, :cond_5

    .line 416
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    sget v7, Lcom/popcap/pvz_row/R$string;->text_75_99:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 421
    :cond_5
    iget-object v6, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    sget v7, Lcom/popcap/pvz_row/R$string;->text_100:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public onDownloadStateChanged(I)V
    .locals 10
    .param p1, "newState"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 428
    iget v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mState:I

    if-eq v4, p1, :cond_0

    .line 430
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownloadStateChanged newstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    iput p1, p0, Lcom/popcap/pvz_row/ObbActivity;->mState:I

    .line 432
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/popcap/pvz_row/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 433
    const/4 v1, 0x1

    .line 434
    .local v1, "indeterminate":Z
    packed-switch p1, :pswitch_data_0

    .line 548
    :pswitch_0
    const/4 v1, 0x1

    .line 549
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->hideMessage()V

    .line 553
    :goto_0
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 555
    .end local v1    # "indeterminate":Z
    :cond_0
    :goto_1
    return-void

    .line 436
    .restart local v1    # "indeterminate":Z
    :pswitch_1
    const-string v4, "PvZ"

    const-string v5, ".............................STATE_IDLE............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->hideMessage()V

    .line 438
    const/4 v1, 0x1

    .line 439
    goto :goto_0

    .line 442
    :pswitch_2
    const-string v4, "PvZ"

    const-string v5, ".............................STATE_CONNECTING/STATE_FETCHING_URL............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->hideMessage()V

    .line 444
    const/4 v1, 0x1

    .line 445
    goto :goto_0

    .line 447
    :pswitch_3
    const-string v4, "PvZ"

    const-string v5, ".............................STATE_DOWNLOADING............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->hideMessage()V

    .line 449
    const/4 v1, 0x0

    .line 450
    goto :goto_0

    .line 453
    :pswitch_4
    const-string v4, "PvZ"

    const-string v5, ".............................License check failed............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget v4, Lcom/popcap/pvz_row/R$string;->license_failed:I

    invoke-virtual {p0, v4}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/R$string;->downloader_Retry:I

    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Quit:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/popcap/pvz_row/ObbActivity;->showMessage(Ljava/lang/String;II)V

    .line 455
    const/4 v1, 0x0

    .line 456
    goto :goto_0

    .line 461
    :pswitch_5
    const-string v4, "PvZ"

    const-string v5, ".............................STATE_FAILED............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {p1}, Lcom/popcap/pvz_row/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/R$string;->downloader_Retry:I

    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Quit:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/popcap/pvz_row/ObbActivity;->showMessage(Ljava/lang/String;II)V

    .line 463
    const/4 v1, 0x0

    .line 464
    goto :goto_0

    .line 467
    :pswitch_6
    const-string v4, "PvZ"

    const-string v5, ".............................STATE_PAUSED_WIFI_DISABLED_NEED_CELLULAR_PERMISSION............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/popcap/pvz_row/ObbActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 472
    .local v3, "manager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 474
    .local v2, "is3G":Z
    if-eqz v2, :cond_2

    .line 476
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/popcap/pvz_row/ObbActivity;->isFirstTime3GCheck:Z

    .line 477
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

    if-eqz v4, :cond_1

    .line 479
    sget v4, Lcom/popcap/pvz_row/R$string;->downloader_Confirm3GNetwork:I

    invoke-virtual {p0, v4}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/R$string;->downloader_Continue:I

    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Quit:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/popcap/pvz_row/ObbActivity;->showMessage(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 488
    .end local v2    # "is3G":Z
    .end local v3    # "manager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v8, p0, Lcom/popcap/pvz_row/ObbActivity;->isFirstTime3GCheck:Z

    .line 491
    const-string v4, "PvZ"

    const-string v5, ".............................error at 3G check............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-static {p1}, Lcom/popcap/pvz_row/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/R$string;->downloader_Retry:I

    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Quit:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/popcap/pvz_row/ObbActivity;->showMessage(Ljava/lang/String;II)V

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    const/4 v1, 0x0

    .line 495
    goto/16 :goto_0

    .line 485
    .restart local v2    # "is3G":Z
    .restart local v3    # "manager":Landroid/net/ConnectivityManager;
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/popcap/pvz_row/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/R$string;->downloader_Retry:I

    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Quit:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/popcap/pvz_row/ObbActivity;->showMessage(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 498
    .end local v2    # "is3G":Z
    .end local v3    # "manager":Landroid/net/ConnectivityManager;
    :pswitch_7
    const-string v4, "PvZ"

    const-string v5, ".............................STATE_PAUSED_BY_REQUEST............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mPause:Landroid/widget/Button;

    sget v5, Lcom/popcap/pvz_row/R$string;->downloader_Resume:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 500
    iget-boolean v4, p0, Lcom/popcap/pvz_row/ObbActivity;->pausedFor3GCheck:Z

    if-nez v4, :cond_3

    .line 502
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->hideMessage()V

    .line 508
    :goto_3
    const/4 v1, 0x0

    .line 509
    goto/16 :goto_0

    .line 506
    :cond_3
    iput-boolean v8, p0, Lcom/popcap/pvz_row/ObbActivity;->pausedFor3GCheck:Z

    goto :goto_3

    .line 512
    :pswitch_8
    const-string v4, "PvZ"

    const-string v5, "............................STATE_PAUSED_ROAMING/STATE_PAUSED_SDCARD_UNAVAILABLE.............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {p1}, Lcom/popcap/pvz_row/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/R$string;->downloader_Retry:I

    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Quit:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/popcap/pvz_row/ObbActivity;->showMessage(Ljava/lang/String;II)V

    .line 514
    const/4 v1, 0x0

    .line 515
    goto/16 :goto_0

    .line 517
    :pswitch_9
    const-string v4, "PvZ"

    const-string v5, ".............................STATE_COMPLETED............................."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->setUpNotification()V

    .line 519
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressTextSmall:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/popcap/pvz_row/ObbActivity;->m_TotalDownloadSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/popcap/pvz_row/ObbActivity;->m_TotalDownloadSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MBs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    sget v5, Lcom/popcap/pvz_row/R$string;->text_100:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 522
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 523
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->disablePauseButton()V

    .line 526
    :try_start_2
    iget-object v4, p0, Lcom/popcap/pvz_row/ObbActivity;->m_tools:Lcom/popcap/pvz_row/AndroidTools;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/popcap/pvz_row/AndroidTools;->writeloadedIndicate(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 531
    :goto_4
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->hideMessage()V

    .line 532
    const/4 v1, 0x0

    .line 533
    iput-boolean v8, p0, Lcom/popcap/pvz_row/ObbActivity;->mIsDownloading:Z

    .line 534
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->startGameActivity()V

    goto/16 :goto_1

    .line 528
    :catch_1
    move-exception v4

    goto :goto_4

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "obbactivity on Pause called"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mIsDownloading:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    invoke-interface {v0, p0}, Lcom/popcap/pvz_row/IStub;->disconnect(Landroid/content/Context;)V

    .line 121
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 718
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 720
    aget-object v3, p2, v1

    .line 721
    .local v3, "permission":Ljava/lang/String;
    aget v5, p3, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 723
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    .line 724
    .local v4, "showRationale":Z
    if-nez v4, :cond_0

    .line 726
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/popcap/pvz_row/R$string;->permissions_tutorial:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lcom/popcap/pvz_row/R$string;->downloader_Continue:I

    new-instance v7, Lcom/popcap/pvz_row/ObbActivity$5;

    invoke-direct {v7, p0}, Lcom/popcap/pvz_row/ObbActivity$5;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 749
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 750
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 762
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "showRationale":Z
    :goto_1
    return-void

    .line 755
    .restart local v3    # "permission":Ljava/lang/String;
    .restart local v4    # "showRationale":Z
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz_row/ObbActivity;->requestPermissions()V

    goto :goto_1

    .line 718
    .end local v4    # "showRationale":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->checkAndDownloadFilesIfNeeded()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "obbactivity onResume called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mIsDownloading:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    invoke-interface {v0, p0}, Lcom/popcap/pvz_row/IStub;->connect(Landroid/content/Context;)V

    .line 146
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 559
    invoke-static {p1}, Lcom/popcap/pvz_row/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

    .line 560
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

    iget-object v1, p0, Lcom/popcap/pvz_row/ObbActivity;->mDownloaderClientStub:Lcom/popcap/pvz_row/IStub;

    invoke-interface {v1}, Lcom/popcap/pvz_row/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/popcap/pvz_row/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 561
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mRemoteService:Lcom/popcap/pvz_row/IDownloaderService;

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "PvZ"

    const-string v1, "............................. mRemoteService initialized! ............................."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    const-string v0, "PvZ"

    const-string v1, "............................. onServiceConnected! ............................."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 157
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "obbactivity on Stop called "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 967
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onWindowFocusChanged of PvZ ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 970
    iput-boolean p1, p0, Lcom/popcap/pvz_row/ObbActivity;->mhasFocus:Z

    .line 971
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mhasFocus:Z

    if-eqz v0, :cond_1

    .line 973
    invoke-direct {p0}, Lcom/popcap/pvz_row/ObbActivity;->onSystemUiVisibilityChanged()V

    .line 975
    :cond_1
    return-void
.end method

.method public setUpNotification()V
    .locals 18

    .prologue
    .line 853
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Nits::MonopolyClassic::Trying to put notification"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 854
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/popcap/pvz_row/ObbActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    .local v12, "notifierIntent":Landroid/content/Intent;
    const/high16 v13, 0x14000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 856
    const/4 v13, 0x0

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v13, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 857
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    const/4 v10, 0x0

    .line 858
    .local v10, "mPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 861
    .local v5, "applicationLabel":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz_row/ObbActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz_row/ObbActivity;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz_row/ObbActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 864
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz_row/ObbActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 870
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string v13, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/popcap/pvz_row/ObbActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/popcap/pvz_row/ObbActivity;->myNotificationManager:Landroid/app/NotificationManager;

    .line 871
    new-instance v13, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v13, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v13}, Ljava/sql/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    .line 872
    .local v3, "NotificationTicket":Ljava/lang/CharSequence;
    sget v13, Lcom/popcap/pvz_row/R$string;->oncomplete_notification_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/popcap/pvz_row/ObbActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "NotificationContent":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 874
    .local v14, "when":J
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 875
    .local v8, "currentapiVersion":I
    new-instance v11, Landroid/app/Notification;

    sget v13, Lcom/popcap/pvz_row/R$drawable;->icon_pushnotification_custom:I

    invoke-direct {v11, v13, v3, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 876
    .local v11, "notification":Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz_row/ObbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 877
    .local v7, "context":Landroid/content/Context;
    iget v13, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v11, Landroid/app/Notification;->flags:I

    .line 878
    invoke-virtual {v11, v7, v5, v2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/popcap/pvz_row/ObbActivity;->myNotificationManager:Landroid/app/NotificationManager;

    sget v16, Lcom/popcap/pvz_row/ObbActivity;->NOTIFICATION_ID:I

    move/from16 v0, v16

    invoke-virtual {v13, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 880
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Nits::MonopolyClassic:: notification done"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 881
    return-void

    .line 866
    .end local v2    # "NotificationContent":Ljava/lang/CharSequence;
    .end local v3    # "NotificationTicket":Ljava/lang/CharSequence;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "currentapiVersion":I
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v14    # "when":J
    :catch_0
    move-exception v9

    .line 868
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setupUI()V
    .locals 2

    .prologue
    .line 282
    sget v0, Lcom/popcap/pvz_row/R$layout;->downloader_row:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->setContentView(I)V

    .line 284
    sget v0, Lcom/popcap/pvz_row/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 286
    sget v0, Lcom/popcap/pvz_row/R$id;->statusText:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressText:Landroid/widget/TextView;

    .line 287
    sget v0, Lcom/popcap/pvz_row/R$id;->progressText:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressTextSmall:Landroid/widget/TextView;

    .line 288
    sget v0, Lcom/popcap/pvz_row/R$id;->messageText:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mMessageText:Landroid/widget/TextView;

    .line 290
    sget v0, Lcom/popcap/pvz_row/R$id;->messageView:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mMessageView:Landroid/view/View;

    .line 291
    sget v0, Lcom/popcap/pvz_row/R$id;->progressView:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressView:Landroid/view/View;

    .line 293
    sget v0, Lcom/popcap/pvz_row/R$id;->pauseButton:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mPause:Landroid/widget/Button;

    .line 294
    sget v0, Lcom/popcap/pvz_row/R$id;->okButton:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mOK:Landroid/widget/Button;

    .line 295
    sget v0, Lcom/popcap/pvz_row/R$id;->cancelButton:I

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mCancel:Landroid/widget/Button;

    .line 297
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mOK:Landroid/widget/Button;

    new-instance v1, Lcom/popcap/pvz_row/ObbActivity$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/ObbActivity$1;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mPause:Landroid/widget/Button;

    new-instance v1, Lcom/popcap/pvz_row/ObbActivity$2;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/ObbActivity$2;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/popcap/pvz_row/ObbActivity$3;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/ObbActivity$3;-><init>(Lcom/popcap/pvz_row/ObbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    return-void
.end method

.method public showMessage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "okID"    # I
    .param p3, "cancelID"    # I

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mShowingMessage:Z

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mMessageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mShowingMessage:Z

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mOK:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 840
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 841
    return-void
.end method

.method public startGameActivity()V
    .locals 2

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PVZ_F2P"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/ObbActivity;->startActivity(Landroid/content/Intent;)V

    .line 643
    invoke-virtual {p0}, Lcom/popcap/pvz_row/ObbActivity;->finish()V

    .line 645
    return-void
.end method
