.class public Lcom/inmobi/commons/internal/ApplicationFocusManager;
.super Ljava/lang/Object;
.source "ApplicationFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/ApplicationFocusManager$b;,
        Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;
    }
.end annotation


# static fields
.field protected static final MSG_PAUSED:I = 0x3e9

.field protected static final MSG_RESUMED:I = 0x3ea

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Object;

.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic a()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static addFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V
    .locals 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    invoke-static {}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b()V

    goto :goto_0
.end method

.method private static b()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "InMobiAFM"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    .line 55
    sget-object v1, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 56
    const-class v1, Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 57
    const/4 v1, 0x0

    .line 58
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityLifecycleCallbacks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 61
    const/4 v5, 0x0

    aput-object v0, v1, v5

    .line 58
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    new-instance v3, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;

    invoke-direct {v3}, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;-><init>()V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    const-class v2, Landroid/app/Application;

    const-string v3, "registerActivityLifecycleCallbacks"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_2
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot register activity lifecycle callbacks"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;->onFocusChanged(Z)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method private static c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 114
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 115
    const-class v1, Landroid/app/Application;

    const-string v2, "unregisterActivityLifecycleCallbacks"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    sget-object v2, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->stop()V

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Exception unregister app lifecycle callback"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 42
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 44
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    goto :goto_0
.end method

.method public static removeFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V
    .locals 2

    .prologue
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c()V

    goto :goto_0
.end method
