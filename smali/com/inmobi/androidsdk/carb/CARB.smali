.class public Lcom/inmobi/androidsdk/carb/CARB;
.super Ljava/lang/Object;
.source "CARB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;
    }
.end annotation


# static fields
.field public static final LOGGING_TAG:Ljava/lang/String; = "[InMobi]-[CARB]-4.4.3"

.field private static g:Lcom/inmobi/androidsdk/carb/CARB;

.field private static j:Landroid/content/SharedPreferences;

.field private static k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static l:Ljava/lang/Thread;

.field private static m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static n:Ljava/lang/Thread;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;


# instance fields
.field a:[B

.field b:[B

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final r:I

.field private final s:I

.field private t:[B

.field private u:[B

.field private v:[B

.field private w:[B

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/androidsdk/carb/CarbInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcom/inmobi/androidsdk/carb/CARB;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/carb/CARB;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->g:Lcom/inmobi/androidsdk/carb/CARB;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->o:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->p:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->q:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "carb_last_req_time"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->h:Ljava/lang/String;

    .line 48
    const-string v0, "carbpreference"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->i:Ljava/lang/String;

    .line 61
    const/16 v0, 0x8

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->r:I

    .line 62
    const/16 v0, 0x10

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->s:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->x:Ljava/util/ArrayList;

    .line 85
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->initialize()V

    .line 86
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->j:Landroid/content/SharedPreferences;

    .line 89
    return-void
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/inmobi/androidsdk/carb/CARB;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    invoke-static/range {p1 .. p6}, Lcom/inmobi/commons/internal/InternalSDKUtil;->SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    const-string v2, "sm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v0, "&sn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    const-string v1, "[InMobi]-[CARB]-4.4.3"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->c()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/carb/CARB;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/androidsdk/carb/CarbInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 475
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/carb/CARB$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/androidsdk/carb/CARB$a;-><init>(Lcom/inmobi/androidsdk/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->n:Ljava/lang/Thread;

    .line 655
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_0
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/carb/CARB;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 726
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 729
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_0
    return v0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;[B)[B
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB;->t:[B

    return-object p1
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/carb/CARB$b;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/carb/CARB$b;-><init>(Lcom/inmobi/androidsdk/carb/CARB;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->l:Ljava/lang/Thread;

    .line 428
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->e()V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/carb/CARB;[B)[B
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB;->v:[B

    return-object p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 451
    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->a:[B

    .line 452
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 453
    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 455
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->u:[B

    .line 456
    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->u:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->t:[B

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 661
    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->b:[B

    .line 662
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 663
    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 665
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->w:[B

    .line 666
    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->w:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->u:[B

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->h:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 675
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 678
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 681
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 684
    :cond_0
    return-void
.end method

.method public static fillCarbInfo()V
    .locals 4

    .prologue
    .line 699
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 701
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_0

    .line 705
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/androidsdk/carb/CARB;->setAppBId(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->setAppDisplayName(Ljava/lang/String;)V

    .line 708
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 710
    const/4 v0, 0x0

    .line 711
    if-eqz v1, :cond_2

    .line 712
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 713
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 714
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 718
    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->setAppVer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_3
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Failed to fill CarbInfo"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->d()V

    return-void
.end method

.method public static getAppBid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryISO(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 768
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 770
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 774
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/inmobi/androidsdk/carb/CARB;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->g:Lcom/inmobi/androidsdk/carb/CARB;

    return-object v0
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    const-string v0, ""

    .line 793
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    .line 794
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    const-string v0, ""

    .line 689
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->f()V

    return-void
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->v:[B

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->w:[B

    return-object v0
.end method

.method public static setAppBId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 739
    sput-object p0, Lcom/inmobi/androidsdk/carb/CARB;->o:Ljava/lang/String;

    .line 740
    return-void
.end method

.method public static setAppDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 759
    sput-object p0, Lcom/inmobi/androidsdk/carb/CARB;->q:Ljava/lang/String;

    .line 760
    return-void
.end method

.method public static setAppVer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 749
    sput-object p0, Lcom/inmobi/androidsdk/carb/CARB;->p:Ljava/lang/String;

    .line 750
    return-void
.end method


# virtual methods
.method public setCallBack(Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    .line 782
    return-void
.end method

.method public declared-synchronized startCarb()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 98
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->isCarbEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v1, "CARB feature disabled."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->j:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->h:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 111
    cmp-long v2, v6, v0

    if-nez v2, :cond_2

    .line 113
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v1, "Requesting CARB first time"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getRetreiveFrequncy()J

    move-result-wide v2

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 121
    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    .line 123
    cmp-long v0, v0, v6

    if-gtz v0, :cond_3

    .line 125
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v1, "CARB request interval reached. Requesting again"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->b()V

    goto :goto_0

    .line 130
    :cond_3
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v1, "CARB request interval not reached. NO request"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
