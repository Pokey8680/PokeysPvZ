.class public Lroboguice/config/DefaultRoboModule;
.super Lcom/google/inject/AbstractModule;
.source "DefaultRoboModule.java"


# static fields
.field public static final GLOBAL_EVENT_MANAGER_NAME:Ljava/lang/String; = "GlobalEventManager"

.field private static mapSystemSericeClassToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected application:Landroid/app/Application;

.field protected contextScope:Lroboguice/inject/ContextScope;

.field protected resourceListener:Lroboguice/inject/ResourceListener;

.field protected viewListener:Lroboguice/inject/ViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    .line 111
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/location/LocationManager;

    const-string v2, "location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/view/WindowManager;

    const-string v2, "window"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "activity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/os/PowerManager;

    const-string v2, "power"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "alarm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "notification"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/KeyguardManager;

    const-string v2, "keyguard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/os/Vibrator;

    const-string v2, "vibrator"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "connectivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "input_method"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/hardware/SensorManager;

    const-string v2, "sensor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/media/AudioManager;

    const-string v2, "audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 126
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/DownloadManager;

    const-string v2, "download"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lroboguice/inject/ContextScope;Lroboguice/inject/ViewListener;Lroboguice/inject/ResourceListener;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "contextScope"    # Lroboguice/inject/ContextScope;
    .param p3, "viewListener"    # Lroboguice/inject/ViewListener;
    .param p4, "resourceListener"    # Lroboguice/inject/ResourceListener;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    .line 132
    iput-object p1, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    .line 133
    iput-object p2, p0, Lroboguice/config/DefaultRoboModule;->contextScope:Lroboguice/inject/ContextScope;

    .line 134
    iput-object p3, p0, Lroboguice/config/DefaultRoboModule;->viewListener:Lroboguice/inject/ViewListener;

    .line 135
    iput-object p4, p0, Lroboguice/config/DefaultRoboModule;->resourceListener:Lroboguice/inject/ResourceListener;

    .line 136
    return-void
.end method

.method private bindDynamicBindings()V
    .locals 4

    .prologue
    .line 219
    sget-boolean v2, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v2, :cond_0

    .line 220
    sget-object v2, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v2}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    sget-object v3, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v3}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerProviderType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 222
    :cond_0
    sget-boolean v2, Lroboguice/fragment/FragmentUtil;->hasNative:Z

    if-eqz v2, :cond_1

    .line 223
    sget-object v2, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v2}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    sget-object v3, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v3}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerProviderType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 226
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 229
    :try_start_0
    const-string v2, "android.accounts.AccountManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/AccountManagerProvider;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "c":Ljava/lang/Class;
    :cond_2
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/lang/Throwable;
    const-class v2, Lroboguice/config/DefaultRoboModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Impossible to bind AccountManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private bindSystemService(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p2, "androidServiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lroboguice/inject/SystemServiceProvider;

    iget-object v2, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-direct {v1, v2, p2}, Lroboguice/inject/SystemServiceProvider;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 214
    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 9

    .prologue
    .line 145
    const-class v6, Landroid/content/Context;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    .line 146
    .local v0, "contextProvider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<Landroid/content/Context;>;"
    new-instance v4, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    invoke-direct {v4}, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;-><init>()V

    .line 149
    .local v4, "observerThreadingDecorator":Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;
    const-class v6, Lroboguice/inject/ViewListener;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    iget-object v7, p0, Lroboguice/config/DefaultRoboModule;->viewListener:Lroboguice/inject/ViewListener;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 152
    const-class v6, Lroboguice/inject/ContextSingleton;

    iget-object v7, p0, Lroboguice/config/DefaultRoboModule;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0, v6, v7}, Lroboguice/config/DefaultRoboModule;->bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    .line 154
    const-class v6, Lroboguice/inject/ContextScope;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->superbind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    iget-object v7, p0, Lroboguice/config/DefaultRoboModule;->contextScope:Lroboguice/inject/ContextScope;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 155
    const-class v6, Landroid/content/res/AssetManager;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/AssetManagerProvider;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 156
    const-class v6, Landroid/content/Context;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/ContextSingleton;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 157
    const-class v6, Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/ContextSingleton;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 158
    const-class v6, Lroboguice/activity/RoboActivity;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/ContextSingleton;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 159
    const-class v6, Landroid/app/Service;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/ContextSingleton;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 160
    const-class v6, Lroboguice/service/RoboService;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/ContextSingleton;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 163
    const-class v6, Landroid/content/SharedPreferences;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/SharedPreferencesProvider;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 164
    const-class v6, Landroid/content/res/Resources;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/ResourcesProvider;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 165
    const-class v6, Landroid/content/ContentResolver;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/ContentResolverProvider;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 166
    const-class v6, Landroid/app/Application;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    iget-object v7, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 167
    const-class v6, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 168
    const-class v6, Lroboguice/event/EventManager;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    const-string v7, "GlobalEventManager"

    invoke-static {v7}, Lcom/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/google/inject/name/Named;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/event/EventManager;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/inject/binder/ScopedBindingBuilder;->asEagerSingleton()V

    .line 169
    const-class v6, Landroid/os/Handler;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/inject/HandlerProvider;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 172
    sget-object v6, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lroboguice/config/DefaultRoboModule;->bindSystemService(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/String;>;"
    :cond_0
    const-class v6, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    new-instance v7, Lroboguice/inject/ContextScopedSystemServiceProvider;

    const-string v8, "layout_inflater"

    invoke-direct {v7, v0, v8}, Lroboguice/inject/ContextScopedSystemServiceProvider;-><init>(Lcom/google/inject/Provider;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 178
    const-class v6, Landroid/app/SearchManager;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    new-instance v7, Lroboguice/inject/ContextScopedSystemServiceProvider;

    const-string v8, "search"

    invoke-direct {v7, v0, v8}, Lroboguice/inject/ContextScopedSystemServiceProvider;-><init>(Lcom/google/inject/Provider;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 181
    const-class v6, Lroboguice/inject/InjectResource;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v6

    iget-object v7, p0, Lroboguice/config/DefaultRoboModule;->resourceListener:Lroboguice/inject/ResourceListener;

    invoke-virtual {p0, v6, v7}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 185
    :cond_1
    const-class v6, Lroboguice/inject/InjectExtra;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    new-instance v2, Lroboguice/inject/ExtrasListener;

    invoke-direct {v2, v0}, Lroboguice/inject/ExtrasListener;-><init>(Lcom/google/inject/Provider;)V

    .line 187
    .local v2, "extrasListener":Lroboguice/inject/ExtrasListener;
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 191
    .end local v2    # "extrasListener":Lroboguice/inject/ExtrasListener;
    :cond_2
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v6

    iget-object v7, p0, Lroboguice/config/DefaultRoboModule;->viewListener:Lroboguice/inject/ViewListener;

    invoke-virtual {p0, v6, v7}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 193
    new-instance v5, Lroboguice/inject/PreferenceListener;

    iget-object v6, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-direct {v5, v0, v6}, Lroboguice/inject/PreferenceListener;-><init>(Lcom/google/inject/Provider;Landroid/app/Application;)V

    .line 194
    .local v5, "preferenceListener":Lroboguice/inject/PreferenceListener;
    const-class v6, Lroboguice/inject/PreferenceListener;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->superbind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 195
    const-class v6, Lroboguice/inject/InjectPreference;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 200
    :cond_3
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v6

    new-instance v7, Lroboguice/event/ObservesTypeListener;

    const-class v8, Lroboguice/event/EventManager;

    invoke-virtual {p0, v8}, Lroboguice/config/DefaultRoboModule;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lroboguice/event/ObservesTypeListener;-><init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;)V

    invoke-virtual {p0, v6, v7}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 201
    invoke-virtual {p0, v4}, Lroboguice/config/DefaultRoboModule;->requestInjection(Ljava/lang/Object;)V

    .line 203
    const-class v6, Lroboguice/util/Ln;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->isInjectable(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    const-class v6, Lroboguice/util/LnInterface;

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v6

    const-class v7, Lroboguice/util/LnImpl;

    invoke-interface {v6, v7}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 206
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lroboguice/util/Ln;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lroboguice/config/DefaultRoboModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 209
    :cond_4
    invoke-direct {p0}, Lroboguice/config/DefaultRoboModule;->bindDynamicBindings()V

    .line 210
    return-void
.end method

.method public providesAndroidId()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/inject/Provides;
    .end annotation

    .annotation runtime Lcom/google/inject/name/Named;
        value = "android_id"
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "androidId":Ljava/lang/String;
    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 259
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    return-object v0

    .line 260
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/RuntimeException;
    const-class v3, Lroboguice/config/DefaultRoboModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Impossible to get the android device Id. This may fail \'normally\' when testing."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 268
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No Android Id."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public providesPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation runtime Lcom/google/inject/Provides;
    .end annotation

    .annotation runtime Lcom/google/inject/Singleton;
    .end annotation

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
