.class public final Lroboguice/RoboGuice;
.super Ljava/lang/Object;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/RoboGuice$Util;
    }
.end annotation


# static fields
.field public static DEFAULT_STAGE:Lcom/google/inject/Stage;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field

.field protected static injectors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Application;",
            "Lcom/google/inject/Injector;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field

.field protected static resourceListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Application;",
            "Lroboguice/inject/ResourceListener;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field

.field private static useAnnotationDatabases:Z

.field protected static viewListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Application;",
            "Lroboguice/inject/ViewListener;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget-object v1, Lcom/google/inject/Stage;->PRODUCTION:Lcom/google/inject/Stage;

    sput-object v1, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    .line 56
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    .line 58
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    .line 60
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    .line 64
    const/4 v1, 0x1

    sput-boolean v1, Lroboguice/RoboGuice;->useAnnotationDatabases:Z

    .line 68
    const-string v1, "roboguice.useAnnotationDatabases"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "useAnnotationsEnvVar":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lroboguice/RoboGuice;->useAnnotationDatabases:Z

    .line 72
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method private static varargs createGuiceInjector(Landroid/app/Application;Lcom/google/inject/Stage;Lcom/google/inject/internal/util/Stopwatch;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "stage"    # Lcom/google/inject/Stage;
    .param p2, "stopwatch"    # Lcom/google/inject/internal/util/Stopwatch;
    .param p3, "modules"    # [Lcom/google/inject/Module;

    .prologue
    .line 185
    :try_start_0
    const-class v2, Lroboguice/RoboGuice;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-static {p1, p3}, Lcom/google/inject/Guice;->createInjector(Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object v0

    .line 187
    .local v0, "rtrn":Lcom/google/inject/Injector;
    sget-object v1, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const-string v1, "BaseApplicationInjector creation"

    invoke-virtual {p2, v1}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    return-object v0

    .line 189
    .end local v0    # "rtrn":Lcom/google/inject/Injector;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    :catchall_1
    move-exception v1

    const-string v2, "BaseApplicationInjector creation"

    invoke-virtual {p2, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    throw v1
.end method

.method public static destroyInjector(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 248
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    invoke-virtual {v1}, Lroboguice/event/EventManager;->destroy()V

    .line 250
    sget-object v1, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method private static extractModulesFromManifest(Landroid/app/Application;)Ljava/util/List;
    .locals 16
    .param p0, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v10, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/inject/Module;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x80

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 160
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 161
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string v13, "roboguice.modules"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "roboguiceModules":Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Lroboguice/RoboGuice;->newDefaultRoboModule(Landroid/app/Application;)Lroboguice/config/DefaultRoboModule;

    move-result-object v4

    .line 163
    .local v4, "defaultRoboModule":Lroboguice/config/DefaultRoboModule;
    if-eqz v12, :cond_2

    const-string v13, "[\\s,]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "moduleNames":[Ljava/lang/String;
    :goto_1
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v11, v1, v6

    .line 168
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Lroboguice/util/Strings;->notEmpty(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 169
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-class v14, Lcom/google/inject/Module;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 171
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/inject/Module;>;"
    const/4 v13, 0x1

    :try_start_1
    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/app/Application;

    aput-object v15, v13, v14

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/inject/Module;>;"
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 161
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "defaultRoboModule":Lroboguice/config/DefaultRoboModule;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "moduleNames":[Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "roboguiceModules":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 163
    .restart local v4    # "defaultRoboModule":Lroboguice/config/DefaultRoboModule;
    .restart local v12    # "roboguiceModules":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    :try_start_2
    new-array v9, v13, [Ljava/lang/String;

    goto :goto_1

    .line 172
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/inject/Module;>;"
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "moduleNames":[Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 173
    .local v7, "ignored":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 178
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/inject/Module;>;"
    .end local v4    # "defaultRoboModule":Lroboguice/config/DefaultRoboModule;
    .end local v6    # "i$":I
    .end local v7    # "ignored":Ljava/lang/NoSuchMethodException;
    .end local v8    # "len$":I
    .end local v9    # "moduleNames":[Ljava/lang/String;
    .end local v10    # "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/inject/Module;>;"
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "roboguiceModules":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 179
    .local v5, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Unable to instantiate your Module.  Check your roboguice.modules metadata in your AndroidManifest.xml"

    invoke-direct {v13, v14, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 177
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "defaultRoboModule":Lroboguice/config/DefaultRoboModule;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "moduleNames":[Ljava/lang/String;
    .restart local v10    # "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/inject/Module;>;"
    .restart local v12    # "roboguiceModules":Ljava/lang/String;
    :cond_3
    return-object v10
.end method

.method public static getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 197
    .local v0, "application":Landroid/app/Application;
    new-instance v1, Lroboguice/inject/ContextScopedRoboInjector;

    invoke-static {v0}, Lroboguice/RoboGuice;->getOrCreateBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lroboguice/inject/ContextScopedRoboInjector;-><init>(Landroid/content/Context;Lcom/google/inject/Injector;)V

    return-object v1
.end method

.method public static getOrCreateBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 81
    sget-object v2, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Injector;

    .line 82
    .local v1, "rtrn":Lcom/google/inject/Injector;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 90
    :goto_0
    return-object v2

    .line 85
    :cond_0
    const-class v3, Lroboguice/RoboGuice;

    monitor-enter v3

    .line 86
    :try_start_0
    sget-object v2, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/inject/Injector;

    move-object v1, v0

    .line 87
    if-eqz v1, :cond_1

    .line 88
    monitor-exit v3

    move-object v2, v1

    goto :goto_0

    .line 90
    :cond_1
    sget-object v2, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    invoke-static {p0, v2}, Lroboguice/RoboGuice;->getOrCreateBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;)Lcom/google/inject/Injector;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getOrCreateBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;)Lcom/google/inject/Injector;
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "stage"    # Lcom/google/inject/Stage;

    .prologue
    .line 146
    new-instance v1, Lcom/google/inject/internal/util/Stopwatch;

    invoke-direct {v1}, Lcom/google/inject/internal/util/Stopwatch;-><init>()V

    .line 148
    .local v1, "stopwatch":Lcom/google/inject/internal/util/Stopwatch;
    const-class v3, Lroboguice/RoboGuice;

    monitor-enter v3

    .line 149
    :try_start_0
    invoke-static {p0}, Lroboguice/RoboGuice;->initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Landroid/app/Application;)V

    .line 150
    invoke-static {p0}, Lroboguice/RoboGuice;->extractModulesFromManifest(Landroid/app/Application;)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Module;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/inject/Module;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/inject/Module;

    invoke-static {p0, p1, v1, v2}, Lroboguice/RoboGuice;->createGuiceInjector(Landroid/app/Application;Lcom/google/inject/Stage;Lcom/google/inject/internal/util/Stopwatch;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 152
    .end local v0    # "modules":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Module;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static varargs getOrCreateBaseApplicationInjector(Landroid/app/Application;Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "stage"    # Lcom/google/inject/Stage;
    .param p2, "modules"    # [Lcom/google/inject/Module;

    .prologue
    .line 111
    new-instance v0, Lcom/google/inject/internal/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/inject/internal/util/Stopwatch;-><init>()V

    .line 112
    .local v0, "stopwatch":Lcom/google/inject/internal/util/Stopwatch;
    const-class v2, Lroboguice/RoboGuice;

    monitor-enter v2

    .line 113
    :try_start_0
    invoke-static {p0}, Lroboguice/RoboGuice;->initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Landroid/app/Application;)V

    .line 114
    invoke-static {p0, p1, v0, p2}, Lroboguice/RoboGuice;->createGuiceInjector(Landroid/app/Application;Lcom/google/inject/Stage;Lcom/google/inject/internal/util/Stopwatch;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static getResourceListener(Landroid/app/Application;)Lroboguice/inject/ResourceListener;
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "Double check lock"
        value = {
            "NP_LOAD_OF_KNOWN_NULL_VALUE"
        }
    .end annotation

    .prologue
    .line 219
    sget-object v2, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ResourceListener;

    .line 220
    .local v0, "resourceListener":Lroboguice/inject/ResourceListener;
    if-nez v0, :cond_1

    .line 221
    const-class v3, Lroboguice/RoboGuice;

    monitor-enter v3

    .line 222
    if-nez v0, :cond_0

    .line 223
    :try_start_0
    new-instance v1, Lroboguice/inject/ResourceListener;

    invoke-direct {v1, p0}, Lroboguice/inject/ResourceListener;-><init>(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v0    # "resourceListener":Lroboguice/inject/ResourceListener;
    .local v1, "resourceListener":Lroboguice/inject/ResourceListener;
    :try_start_1
    sget-object v2, Lroboguice/RoboGuice;->resourceListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 226
    .end local v1    # "resourceListener":Lroboguice/inject/ResourceListener;
    .restart local v0    # "resourceListener":Lroboguice/inject/ResourceListener;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 228
    :cond_1
    return-object v0

    .line 226
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "resourceListener":Lroboguice/inject/ResourceListener;
    .restart local v1    # "resourceListener":Lroboguice/inject/ResourceListener;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "resourceListener":Lroboguice/inject/ResourceListener;
    .restart local v0    # "resourceListener":Lroboguice/inject/ResourceListener;
    goto :goto_0
.end method

.method protected static getViewListener(Landroid/app/Application;)Lroboguice/inject/ViewListener;
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "Double check lock"
        value = {
            "NP_LOAD_OF_KNOWN_NULL_VALUE"
        }
    .end annotation

    .prologue
    .line 234
    sget-object v2, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ViewListener;

    .line 235
    .local v0, "viewListener":Lroboguice/inject/ViewListener;
    if-nez v0, :cond_1

    .line 236
    const-class v3, Lroboguice/RoboGuice;

    monitor-enter v3

    .line 237
    if-nez v0, :cond_0

    .line 238
    :try_start_0
    new-instance v1, Lroboguice/inject/ViewListener;

    invoke-direct {v1}, Lroboguice/inject/ViewListener;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v0    # "viewListener":Lroboguice/inject/ViewListener;
    .local v1, "viewListener":Lroboguice/inject/ViewListener;
    :try_start_1
    sget-object v2, Lroboguice/RoboGuice;->viewListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 241
    .end local v1    # "viewListener":Lroboguice/inject/ViewListener;
    .restart local v0    # "viewListener":Lroboguice/inject/ViewListener;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 243
    :cond_1
    return-object v0

    .line 241
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "viewListener":Lroboguice/inject/ViewListener;
    .restart local v1    # "viewListener":Lroboguice/inject/ViewListener;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "viewListener":Lroboguice/inject/ViewListener;
    .restart local v0    # "viewListener":Lroboguice/inject/ViewListener;
    goto :goto_0
.end method

.method private static initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Landroid/app/Application;)V
    .locals 24
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 254
    sget-boolean v17, Lroboguice/RoboGuice;->useAnnotationDatabases:Z

    if-eqz v17, :cond_3

    .line 255
    const-class v17, Lroboguice/RoboGuice;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "Using annotation database(s)."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    .line 259
    .local v18, "start":J
    :try_start_0
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    .local v14, "packageNameList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 263
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 264
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    const-string v17, "roboguice.annotations.packages"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 265
    .local v16, "roboguicePackages":Ljava/lang/String;
    :goto_0
    if-eqz v16, :cond_1

    .line 266
    const-string v17, "[\\s,]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_1

    aget-object v13, v5, v11

    .line 267
    .local v13, "packageName":Ljava/lang/String;
    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 264
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "roboguicePackages":Ljava/lang/String;
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 270
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 272
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-class v17, Lroboguice/RoboGuice;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "Failed to read manifest properly."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 276
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 278
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_2
    const-string v17, "roboguice"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    const-class v17, Lroboguice/RoboGuice;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Using annotation database(s) : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 286
    .local v15, "packageNames":[Ljava/lang/String;
    invoke-interface {v14, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 288
    invoke-static {v15}, Lcom/google/inject/Guice;->setAnnotationDatabasePackageNames([Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 290
    .local v8, "end":J
    const-class v17, Lroboguice/RoboGuice;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Time spent loading annotation databases : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v22, v8, v18

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 303
    .end local v8    # "end":J
    .end local v14    # "packageNameList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "packageNames":[Ljava/lang/String;
    .end local v18    # "start":J
    :goto_2
    return-void

    .line 291
    .restart local v18    # "start":J
    :catch_1
    move-exception v10

    .line 292
    .local v10, "ex":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v20, "Unable to use annotation database(s)"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 295
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v18    # "start":J
    :cond_3
    const-class v17, Lroboguice/RoboGuice;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "Using full reflection. Try using RoboGuice annotation processor for better performance."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v17, Lroboguice/RoboGuice$1;

    invoke-direct/range {v17 .. v17}, Lroboguice/RoboGuice$1;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/google/inject/Guice;->setHierarchyTraversalFilterFactory(Lcom/google/inject/HierarchyTraversalFilterFactory;)V

    goto :goto_2
.end method

.method public static injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 205
    return-object p1
.end method

.method public static newDefaultRoboModule(Landroid/app/Application;)Lroboguice/config/DefaultRoboModule;
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 209
    new-instance v0, Lroboguice/config/DefaultRoboModule;

    new-instance v1, Lroboguice/inject/ContextScope;

    invoke-direct {v1, p0}, Lroboguice/inject/ContextScope;-><init>(Landroid/app/Application;)V

    invoke-static {p0}, Lroboguice/RoboGuice;->getViewListener(Landroid/app/Application;)Lroboguice/inject/ViewListener;

    move-result-object v2

    invoke-static {p0}, Lroboguice/RoboGuice;->getResourceListener(Landroid/app/Application;)Lroboguice/inject/ResourceListener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lroboguice/config/DefaultRoboModule;-><init>(Landroid/app/Application;Lroboguice/inject/ContextScope;Lroboguice/inject/ViewListener;Lroboguice/inject/ResourceListener;)V

    return-object v0
.end method

.method public static varargs overrideApplicationInjector(Landroid/app/Application;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 7
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "overrideModules"    # [Lcom/google/inject/Module;

    .prologue
    .line 133
    const-class v3, Lroboguice/RoboGuice;

    monitor-enter v3

    .line 134
    :try_start_0
    invoke-static {p0}, Lroboguice/RoboGuice;->extractModulesFromManifest(Landroid/app/Application;)Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "baseModules":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Module;>;"
    sget-object v2, Lroboguice/RoboGuice;->DEFAULT_STAGE:Lcom/google/inject/Stage;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/inject/Module;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/google/inject/util/Modules;->override(Ljava/lang/Iterable;)Lcom/google/inject/util/Modules$OverriddenModuleBuilder;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/google/inject/util/Modules$OverriddenModuleBuilder;->with([Lcom/google/inject/Module;)Lcom/google/inject/Module;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/google/inject/Guice;->createInjector(Lcom/google/inject/Stage;[Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object v1

    .line 136
    .local v1, "rtrn":Lcom/google/inject/Injector;
    sget-object v2, Lroboguice/RoboGuice;->injectors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v3

    return-object v1

    .line 138
    .end local v0    # "baseModules":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Module;>;"
    .end local v1    # "rtrn":Lcom/google/inject/Injector;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setUseAnnotationDatabases(Z)V
    .locals 0
    .param p0, "useAnnotationDatabases"    # Z

    .prologue
    .line 213
    sput-boolean p0, Lroboguice/RoboGuice;->useAnnotationDatabases:Z

    .line 214
    return-void
.end method
