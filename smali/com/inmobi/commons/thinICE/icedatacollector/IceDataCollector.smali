.class public final Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
.super Ljava/lang/Object;
.source "IceDataCollector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IceDataCollector"

.field private static a:Landroid/content/Context;

.field private static b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

.field private static c:Landroid/os/Looper;

.field private static d:Landroid/os/Handler;

.field private static e:Z

.field private static f:Landroid/app/Activity;

.field private static g:Ljava/lang/Runnable;

.field private static h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

.field private static final j:Ljava/lang/Object;

.field private static k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

.field private static l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    .line 41
    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    .line 42
    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    .line 45
    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    .line 259
    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/b;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/b;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    .line 287
    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    .line 288
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    .line 290
    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    .line 299
    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/a;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/a;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;)Lcom/inmobi/commons/thinICE/icedatacollector/Sample;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    return v0
.end method

.method private static final a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)Z
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->n()V

    return-void
.end method

.method static synthetic c()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic d()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    return-object v0
.end method

.method public static declared-synchronized flush()V
    .locals 3

    .prologue
    .line 159
    const-class v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "IceDataCollector"

    const-string v2, "-- flush()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    .line 165
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit v1

    return-void

    .line 165
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getConfig()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;-><init>(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)V

    .line 227
    return-object v0
.end method

.method public static getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 501
    const/4 v2, 0x0

    .line 503
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getWifiFlags()I

    move-result v3

    .line 504
    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 505
    :goto_0
    invoke-static {v3, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v1

    .line 507
    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleConnectedWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->hasGetConnectedWifiInfoPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->getConnectedWifiInfo(Landroid/content/Context;ZZ)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 524
    :cond_0
    :goto_2
    return-object v2

    .line 504
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 513
    :cond_2
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 514
    const-string v0, "IceDataCollector"

    const-string v1, "application does not have permission to access connected wifi ap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    .line 517
    :catch_0
    move-exception v0

    .line 518
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "IceDataCollector"

    const-string v3, "Error getting wifi data"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "IceDataCollector"

    const-string v1, "-- getData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    .line 243
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    .line 244
    monitor-exit v1

    .line 245
    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSampleCount()I
    .locals 2

    .prologue
    .line 253
    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 255
    monitor-exit v1

    .line 256
    return v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    return-object v0
.end method

.method static synthetic i()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l()Lcom/inmobi/commons/thinICE/icedatacollector/Sample;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    return-object v0
.end method

.method private static m()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2

    .line 92
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "IceDataCollector"

    const-string v1, "startSampling()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 96
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "IceDataCollector"

    const-string v1, "ignoring, already sampling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IDC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    .line 104
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    .line 105
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "IceDataCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next sample in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static n()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "IceDataCollector"

    const-string v1, "stopSampling()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-nez v0, :cond_2

    .line 141
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "IceDataCollector"

    const-string v1, "ignoring, not currently sampling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    sput-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    .line 148
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 149
    sput-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    .line 150
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "IceDataCollector"

    const-string v1, "sampling stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized setConfig(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)V
    .locals 7

    .prologue
    .line 175
    const-class v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "IceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- setConfig("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    if-nez p0, :cond_2

    .line 179
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "IceDataCollector"

    const-string v2, "aborting, config is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 184
    :cond_2
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    .line 185
    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    .line 186
    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleHistorySize()I

    move-result v2

    .line 187
    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleHistorySize()I

    move-result v3

    .line 188
    if-ge v3, v2, :cond_5

    .line 189
    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    sget-object v4, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_4

    .line 191
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 192
    const-string v4, "IceDataCollector"

    const-string v5, "new sample history size, removing samples from start of list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    sget-object v4, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    const/4 v5, 0x0

    sget-object v6, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int v3, v6, v3

    invoke-virtual {v4, v5, v3}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 196
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    :cond_5
    :try_start_3
    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-nez v2, :cond_6

    .line 199
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "IceDataCollector"

    const-string v2, "not restarting sampling, not currently sampling"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 196
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 204
    :cond_6
    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-static {v0, v2}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->n()V

    .line 206
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->m()V

    goto :goto_0

    .line 209
    :cond_7
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public static setListener(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)V
    .locals 0

    .prologue
    .line 296
    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    .line 297
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 54
    const-class v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "IceDataCollector"

    const-string v3, "-- start()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    if-nez p0, :cond_2

    .line 58
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 59
    const-string v1, "IceDataCollector"

    const-string v3, "aborting, context is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 63
    :cond_2
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "IceDataCollector"

    const-string v3, "ignoring, data collection is disabled in settings"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 69
    :cond_3
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v1, v3, :cond_5

    .line 72
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_4

    .line 73
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "IceDataCollector"

    const-string v3, "aborting, build < 14 and context is not an activity"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_4
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    .line 80
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->m()V

    .line 82
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    if-eqz v1, :cond_1

    .line 83
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 84
    const-string v1, "IceDataCollector"

    const-string v3, "stop previously requested, clearing request"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_6
    const/4 v1, 0x0

    sput-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    .line 87
    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized stop()V
    .locals 6

    .prologue
    .line 118
    const-class v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "IceDataCollector"

    const-string v2, "-- stop()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-nez v0, :cond_2

    .line 122
    const-string v0, "IceDataCollector"

    const-string v2, "ignoring, not currently running"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 125
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "IceDataCollector"

    const-string v2, "ignoring, stop already requested"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    .line 130
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g:Ljava/lang/Runnable;

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getStopRequestTimeout()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "IceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop requested, occurring in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getStopRequestTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
