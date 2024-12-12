.class public Lorg/restlet/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "META-INF/services"

.field public static final DESCRIPTOR_AUTHENTICATOR:Ljava/lang/String; = "org.restlet.engine.security.AuthenticatorHelper"

.field public static final DESCRIPTOR_AUTHENTICATOR_PATH:Ljava/lang/String; = "META-INF/services/org.restlet.engine.security.AuthenticatorHelper"

.field public static final DESCRIPTOR_CLIENT:Ljava/lang/String; = "org.restlet.engine.ClientHelper"

.field public static final DESCRIPTOR_CLIENT_PATH:Ljava/lang/String; = "META-INF/services/org.restlet.engine.ClientHelper"

.field public static final DESCRIPTOR_CONVERTER:Ljava/lang/String; = "org.restlet.engine.converter.ConverterHelper"

.field public static final DESCRIPTOR_CONVERTER_PATH:Ljava/lang/String; = "META-INF/services/org.restlet.engine.converter.ConverterHelper"

.field public static final DESCRIPTOR_PROTOCOL:Ljava/lang/String; = "org.restlet.engine.ProtocolHelper"

.field public static final DESCRIPTOR_PROTOCOL_PATH:Ljava/lang/String; = "META-INF/services/org.restlet.engine.ProtocolHelper"

.field public static final DESCRIPTOR_SERVER:Ljava/lang/String; = "org.restlet.engine.ServerHelper"

.field public static final DESCRIPTOR_SERVER_PATH:Ljava/lang/String; = "META-INF/services/org.restlet.engine.ServerHelper"

.field public static final MAJOR_NUMBER:Ljava/lang/String; = "2"

.field public static final MINOR_NUMBER:Ljava/lang/String; = "1"

.field public static final RELEASE_NUMBER:Ljava/lang/String; = ".6"

.field public static final VERSION:Ljava/lang/String; = "2.1.6"

.field public static final VERSION_HEADER:Ljava/lang/String; = "Restlet-Framework/2.1.6"

.field private static volatile instance:Lorg/restlet/engine/Engine;

.field private static volatile logConfigured:Z

.field private static volatile logFormatter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/logging/Formatter;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile logLevel:Ljava/util/logging/Level;

.field private static volatile restletLogLevel:Ljava/util/logging/Level;


# instance fields
.field private volatile classLoader:Ljava/lang/ClassLoader;

.field private loggerFacade:Lorg/restlet/engine/log/LoggerFacade;

.field private final registeredAuthenticators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/security/AuthenticatorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private final registeredConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/converter/ConverterHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ProtocolHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Server;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile userClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lorg/restlet/engine/Engine;->instance:Lorg/restlet/engine/Engine;

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lorg/restlet/engine/Engine;->logConfigured:Z

    .line 110
    const-class v0, Lorg/restlet/engine/log/SimplestFormatter;

    sput-object v0, Lorg/restlet/engine/Engine;->logFormatter:Ljava/lang/Class;

    .line 113
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Lorg/restlet/engine/Engine;->logLevel:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/restlet/engine/Engine;-><init>(Z)V

    .line 463
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5
    .param p1, "discoverHelpers"    # Z

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-static {p0}, Lorg/restlet/engine/Engine;->setInstance(Lorg/restlet/engine/Engine;)V

    .line 476
    sget-object v2, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v3, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    if-ne v2, v3, :cond_1

    .line 477
    new-instance v2, Lorg/restlet/engine/log/LoggerFacade;

    invoke-direct {v2}, Lorg/restlet/engine/log/LoggerFacade;-><init>()V

    iput-object v2, p0, Lorg/restlet/engine/Engine;->loggerFacade:Lorg/restlet/engine/log/LoggerFacade;

    .line 495
    :goto_0
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/restlet/engine/Engine;->registeredClients:Ljava/util/List;

    .line 496
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/restlet/engine/Engine;->registeredProtocols:Ljava/util/List;

    .line 498
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/restlet/engine/Engine;->registeredServers:Ljava/util/List;

    .line 499
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/restlet/engine/Engine;->registeredAuthenticators:Ljava/util/List;

    .line 500
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/restlet/engine/Engine;->registeredConverters:Ljava/util/List;

    .line 502
    if-eqz p1, :cond_0

    .line 504
    :try_start_0
    invoke-direct {p0}, Lorg/restlet/engine/Engine;->discoverConnectors()V

    .line 505
    invoke-direct {p0}, Lorg/restlet/engine/Engine;->discoverProtocols()V

    .line 507
    invoke-direct {p0}, Lorg/restlet/engine/Engine;->discoverAuthenticators()V

    .line 508
    invoke-direct {p0}, Lorg/restlet/engine/Engine;->discoverConverters()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    :cond_0
    :goto_1
    return-void

    .line 479
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->createClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/restlet/engine/Engine;->classLoader:Ljava/lang/ClassLoader;

    .line 480
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/restlet/engine/Engine;->userClassLoader:Ljava/lang/ClassLoader;

    .line 482
    const-string v2, "org.restlet.engine.loggerFacadeClass"

    const-string v3, "org.restlet.engine.log.LoggerFacade"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "loggerFacadeClass":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/engine/log/LoggerFacade;

    iput-object v2, p0, Lorg/restlet/engine/Engine;->loggerFacade:Lorg/restlet/engine/log/LoggerFacade;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/restlet/engine/log/LoggerFacade;

    invoke-direct {v2}, Lorg/restlet/engine/log/LoggerFacade;-><init>()V

    iput-object v2, p0, Lorg/restlet/engine/Engine;->loggerFacade:Lorg/restlet/engine/log/LoggerFacade;

    .line 490
    iget-object v2, p0, Lorg/restlet/engine/Engine;->loggerFacade:Lorg/restlet/engine/log/LoggerFacade;

    const-string v3, "org.restlet"

    invoke-virtual {v2, v3}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to register the logger facade"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "loggerFacadeClass":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 510
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "An error occured while discovering the engine helpers."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static declared-synchronized clear()V
    .locals 2

    .prologue
    .line 138
    const-class v0, Lorg/restlet/engine/Engine;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lorg/restlet/engine/Engine;->setInstance(Lorg/restlet/engine/Engine;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit v0

    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static clearThreadLocalVariables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {v0}, Lorg/restlet/Response;->setCurrent(Lorg/restlet/Response;)V

    .line 185
    invoke-static {v0}, Lorg/restlet/Context;->setCurrent(Lorg/restlet/Context;)V

    .line 186
    invoke-static {v0}, Lorg/restlet/routing/VirtualHost;->setCurrent(Ljava/lang/Integer;)V

    .line 187
    invoke-static {v0}, Lorg/restlet/Application;->setCurrent(Lorg/restlet/Application;)V

    .line 188
    return-void
.end method

.method public static configureLog()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 194
    const-string v3, "java.util.logging.config.file"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "java.util.logging.config.class"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "handlers="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-class v3, Ljava/util/logging/ConsoleHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lorg/restlet/engine/Engine;->getLogLevel()Ljava/util/logging/Level;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/restlet/engine/Engine;->getLogLevel()Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_0
    invoke-static {}, Lorg/restlet/engine/Engine;->getRestletLogLevel()Ljava/util/logging/Level;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "org.restlet.level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/restlet/engine/Engine;->getRestletLogLevel()Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    invoke-static {}, Lorg/restlet/engine/Engine;->getLogFormatter()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 211
    const-class v3, Ljava/util/logging/ConsoleHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "handler":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".formatter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/restlet/engine/Engine;->getLogFormatter()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Lorg/restlet/engine/Engine;->getLogLevel()Ljava/util/logging/Level;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/restlet/engine/Engine;->getLogLevel()Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .end local v0    # "handler":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_3
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Lorg/restlet/engine/Engine;->logConfigured:Z

    .line 231
    return-void

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static createThreadWithLocalVariables(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 7
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v4

    .line 156
    .local v4, "currentApplication":Lorg/restlet/Application;
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v2

    .line 157
    .local v2, "currentContext":Lorg/restlet/Context;
    invoke-static {}, Lorg/restlet/routing/VirtualHost;->getCurrent()Ljava/lang/Integer;

    move-result-object v3

    .line 158
    .local v3, "currentVirtualHost":Ljava/lang/Integer;
    invoke-static {}, Lorg/restlet/Response;->getCurrent()Lorg/restlet/Response;

    move-result-object v1

    .line 160
    .local v1, "currentResponse":Lorg/restlet/Response;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/restlet/engine/Engine$1;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/restlet/engine/Engine$1;-><init>(Lorg/restlet/Response;Lorg/restlet/Context;Ljava/lang/Integer;Lorg/restlet/Application;Ljava/lang/Runnable;)V

    invoke-direct {v6, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v6
.end method

.method private discoverAuthenticators()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    const-string v0, "META-INF/services/org.restlet.engine.security.AuthenticatorHelper"

    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredAuthenticators()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/restlet/engine/Engine;->registerHelpers(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 657
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->registerDefaultAuthentications()V

    .line 658
    return-void
.end method

.method private discoverConnectors()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    const-string v0, "META-INF/services/org.restlet.engine.ClientHelper"

    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v1

    const-class v2, Lorg/restlet/Client;

    invoke-virtual {p0, v0, v1, v2}, Lorg/restlet/engine/Engine;->registerHelpers(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 669
    const-string v0, "META-INF/services/org.restlet.engine.ServerHelper"

    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredServers()Ljava/util/List;

    move-result-object v1

    const-class v2, Lorg/restlet/Server;

    invoke-virtual {p0, v0, v1, v2}, Lorg/restlet/engine/Engine;->registerHelpers(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 671
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->registerDefaultConnectors()V

    .line 672
    return-void
.end method

.method private discoverConverters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    const-string v0, "META-INF/services/org.restlet.engine.converter.ConverterHelper"

    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/restlet/engine/Engine;->registerHelpers(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 682
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->registerDefaultConverters()V

    .line 683
    return-void
.end method

.method private discoverProtocols()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    const-string v0, "META-INF/services/org.restlet.engine.ProtocolHelper"

    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredProtocols()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/restlet/engine/Engine;->registerHelpers(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 693
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->registerDefaultProtocols()V

    .line 694
    return-void
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getLoggerFacade()Lorg/restlet/engine/log/LoggerFacade;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/log/LoggerFacade;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lorg/restlet/engine/Engine;
    .locals 3

    .prologue
    .line 249
    const-class v2, Lorg/restlet/engine/Engine;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lorg/restlet/engine/Engine;->instance:Lorg/restlet/engine/Engine;

    .line 251
    .local v0, "result":Lorg/restlet/engine/Engine;
    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lorg/restlet/engine/Engine;->register()Lorg/restlet/engine/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 255
    :cond_0
    monitor-exit v2

    return-object v0

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getLogFormatter()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/logging/Formatter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lorg/restlet/engine/Engine;->logFormatter:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLogLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lorg/restlet/engine/Engine;->logLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getLoggerFacade()Lorg/restlet/engine/log/LoggerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p1, "defaultLoggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getLoggerFacade()Lorg/restlet/engine/log/LoggerFacade;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultLoggerName"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getLoggerFacade()Lorg/restlet/engine/log/LoggerFacade;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getLoggerFacade()Lorg/restlet/engine/log/LoggerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method private getProviderClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 768
    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 769
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 770
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 772
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getRestletLogLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lorg/restlet/engine/Engine;->restletLogLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized register()Lorg/restlet/engine/Engine;
    .locals 2

    .prologue
    .line 368
    const-class v0, Lorg/restlet/engine/Engine;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lorg/restlet/engine/Engine;->register(Z)Lorg/restlet/engine/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized register(Z)Lorg/restlet/engine/Engine;
    .locals 3
    .param p0, "discoverPlugins"    # Z

    .prologue
    .line 379
    const-class v2, Lorg/restlet/engine/Engine;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lorg/restlet/engine/Engine;->logConfigured:Z

    if-nez v1, :cond_0

    .line 380
    invoke-static {}, Lorg/restlet/engine/Engine;->configureLog()V

    .line 382
    :cond_0
    new-instance v0, Lorg/restlet/engine/Engine;

    invoke-direct {v0, p0}, Lorg/restlet/engine/Engine;-><init>(Z)V

    .line 383
    .local v0, "result":Lorg/restlet/engine/Engine;
    invoke-static {v0}, Lorg/restlet/engine/Engine;->setInstance(Lorg/restlet/engine/Engine;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit v2

    return-object v0

    .line 379
    .end local v0    # "result":Lorg/restlet/engine/Engine;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setInstance(Lorg/restlet/engine/Engine;)V
    .locals 2
    .param p0, "engine"    # Lorg/restlet/engine/Engine;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    const-class v0, Lorg/restlet/engine/Engine;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/restlet/engine/Engine;->instance:Lorg/restlet/engine/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit v0

    return-void

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setLogFormatter(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/logging/Formatter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "logFormatter":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/logging/Formatter;>;"
    sput-object p0, Lorg/restlet/engine/Engine;->logFormatter:Ljava/lang/Class;

    .line 408
    invoke-static {}, Lorg/restlet/engine/Engine;->configureLog()V

    .line 409
    return-void
.end method

.method public static setLogLevel(Ljava/util/logging/Level;)V
    .locals 0
    .param p0, "logLevel"    # Ljava/util/logging/Level;

    .prologue
    .line 418
    sput-object p0, Lorg/restlet/engine/Engine;->logLevel:Ljava/util/logging/Level;

    .line 419
    invoke-static {}, Lorg/restlet/engine/Engine;->configureLog()V

    .line 420
    return-void
.end method

.method public static setRestletLogLevel(Ljava/util/logging/Level;)V
    .locals 0
    .param p0, "restletLogLevel"    # Ljava/util/logging/Level;

    .prologue
    .line 430
    sput-object p0, Lorg/restlet/engine/Engine;->restletLogLevel:Ljava/util/logging/Level;

    .line 431
    invoke-static {}, Lorg/restlet/engine/Engine;->configureLog()V

    .line 432
    return-void
.end method


# virtual methods
.method protected createClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lorg/restlet/engine/util/EngineClassLoader;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/EngineClassLoader;-><init>(Lorg/restlet/engine/Engine;)V

    return-object v0
.end method

.method public createHelper(Lorg/restlet/Client;Ljava/lang/String;)Lorg/restlet/engine/ConnectorHelper;
    .locals 12
    .param p1, "client"    # Lorg/restlet/Client;
    .param p2, "helperClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Client;",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Client;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    const/4 v6, 0x0

    .line 542
    .local v6, "result":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;"
    invoke-virtual {p1}, Lorg/restlet/Client;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 545
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;>;"
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 546
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;"
    check-cast v1, Lorg/restlet/engine/ConnectorHelper;

    .line 548
    .restart local v1    # "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;"
    invoke-virtual {v1}, Lorg/restlet/engine/ConnectorHelper;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lorg/restlet/Client;->getProtocols()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 549
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 553
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/restlet/Client;

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/restlet/engine/ConnectorHelper;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "Exception during the instantiation of the client connector."

    invoke-virtual {v8, v9, v10, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 566
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-nez v6, :cond_5

    .line 568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v8, "No available client connector supports the required protocols: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p1}, Lorg/restlet/Client;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/data/Protocol;

    .line 572
    .local v5, "p":Lorg/restlet/data/Protocol;
    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 575
    .end local v5    # "p":Lorg/restlet/data/Protocol;
    :cond_3
    const-string v8, ". Please add the JAR of a matching connector to your classpath."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    sget-object v8, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v9, Lorg/restlet/engine/Edition;->ANDROID:Lorg/restlet/engine/Edition;

    if-ne v8, v9, :cond_4

    .line 578
    const-string v8, " Then, register this connector helper manually."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_4
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 585
    .end local v1    # "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;>;"
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-object v6
.end method

.method public createHelper(Lorg/restlet/Server;Ljava/lang/String;)Lorg/restlet/engine/ConnectorHelper;
    .locals 12
    .param p1, "server"    # Lorg/restlet/Server;
    .param p2, "helperClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Server;",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    const/4 v6, 0x0

    .line 602
    .local v6, "result":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;"
    invoke-virtual {p1}, Lorg/restlet/Server;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 603
    const/4 v1, 0x0

    .line 604
    .local v1, "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredServers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 605
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;>;"
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 606
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;"
    check-cast v1, Lorg/restlet/engine/ConnectorHelper;

    .line 608
    .restart local v1    # "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;"
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 611
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/engine/ConnectorHelper;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lorg/restlet/Server;->getProtocols()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 614
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/restlet/Server;

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/restlet/engine/ConnectorHelper;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "Exception while instantiation the server connector."

    invoke-virtual {v8, v9, v10, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 627
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-nez v6, :cond_5

    .line 629
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v8, "No available server connector supports the required protocols: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {p1}, Lorg/restlet/Server;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/data/Protocol;

    .line 633
    .local v5, "p":Lorg/restlet/data/Protocol;
    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 636
    .end local v5    # "p":Lorg/restlet/data/Protocol;
    :cond_3
    const-string v8, ". Please add the JAR of a matching connector to your classpath."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    sget-object v8, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v9, Lorg/restlet/engine/Edition;->ANDROID:Lorg/restlet/engine/Edition;

    if-ne v8, v9, :cond_4

    .line 639
    const-string v8, " Then, register this connector helper manually."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_4
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 646
    .end local v1    # "connector":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;>;"
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-object v6
.end method

.method public findHelper()Lorg/restlet/engine/converter/ConverterHelper;
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return-object v0
.end method

.method public findHelper(Lorg/restlet/data/ChallengeScheme;ZZ)Lorg/restlet/engine/security/AuthenticatorHelper;
    .locals 5
    .param p1, "challengeScheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "clientSide"    # Z
    .param p3, "serverSide"    # Z

    .prologue
    .line 720
    const/4 v3, 0x0

    .line 721
    .local v3, "result":Lorg/restlet/engine/security/AuthenticatorHelper;
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredAuthenticators()Ljava/util/List;

    move-result-object v1

    .line 724
    .local v1, "helpers":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/security/AuthenticatorHelper;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-nez v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 725
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/security/AuthenticatorHelper;

    .line 727
    .local v0, "current":Lorg/restlet/engine/security/AuthenticatorHelper;
    invoke-virtual {v0}, Lorg/restlet/engine/security/AuthenticatorHelper;->getChallengeScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/restlet/data/ChallengeScheme;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/restlet/engine/security/AuthenticatorHelper;->isClientSide()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p2, :cond_4

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lorg/restlet/engine/security/AuthenticatorHelper;->isServerSide()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez p3, :cond_4

    .line 730
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Lorg/restlet/engine/security/AuthenticatorHelper;
    check-cast v3, Lorg/restlet/engine/security/AuthenticatorHelper;

    .line 724
    .restart local v3    # "result":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "current":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_5
    return-object v3
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lorg/restlet/engine/Engine;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getLoggerFacade()Lorg/restlet/engine/log/LoggerFacade;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lorg/restlet/engine/Engine;->loggerFacade:Lorg/restlet/engine/log/LoggerFacade;

    return-object v0
.end method

.method public getRegisteredAuthenticators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/security/AuthenticatorHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredAuthenticators:Ljava/util/List;

    return-object v0
.end method

.method public getRegisteredClients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Client;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredClients:Ljava/util/List;

    return-object v0
.end method

.method public getRegisteredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/converter/ConverterHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredConverters:Ljava/util/List;

    return-object v0
.end method

.method public getRegisteredProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ProtocolHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredProtocols:Ljava/util/List;

    return-object v0
.end method

.method public getRegisteredServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Server;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredServers:Ljava/util/List;

    return-object v0
.end method

.method public getUserClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lorg/restlet/engine/Engine;->userClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public registerDefaultAuthentications()V
    .locals 2

    .prologue
    .line 834
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredAuthenticators()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/security/HttpBasicHelper;

    invoke-direct {v1}, Lorg/restlet/engine/security/HttpBasicHelper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredAuthenticators()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/security/SmtpPlainHelper;

    invoke-direct {v1}, Lorg/restlet/engine/security/SmtpPlainHelper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    return-void
.end method

.method public registerDefaultConnectors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 844
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/connector/HttpClientHelper;

    invoke-direct {v1, v2}, Lorg/restlet/engine/connector/HttpClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/local/ClapClientHelper;

    invoke-direct {v1, v2}, Lorg/restlet/engine/local/ClapClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/local/RiapClientHelper;

    invoke-direct {v1, v2}, Lorg/restlet/engine/local/RiapClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredServers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/local/RiapServerHelper;

    invoke-direct {v1, v2}, Lorg/restlet/engine/local/RiapServerHelper;-><init>(Lorg/restlet/Server;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredServers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/connector/HttpServerHelper;

    invoke-direct {v1, v2}, Lorg/restlet/engine/connector/HttpServerHelper;-><init>(Lorg/restlet/Server;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/local/FileClientHelper;

    invoke-direct {v1, v2}, Lorg/restlet/engine/local/FileClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/local/ZipClientHelper;

    invoke-direct {v1, v2}, Lorg/restlet/engine/local/ZipClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    return-void
.end method

.method public registerDefaultConverters()V
    .locals 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/converter/DefaultConverter;

    invoke-direct {v1}, Lorg/restlet/engine/converter/DefaultConverter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    return-void
.end method

.method public registerDefaultProtocols()V
    .locals 2

    .prologue
    .line 872
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredProtocols()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/HttpProtocolHelper;

    invoke-direct {v1}, Lorg/restlet/engine/HttpProtocolHelper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getRegisteredProtocols()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/WebDavProtocolHelper;

    invoke-direct {v1}, Lorg/restlet/engine/WebDavProtocolHelper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    return-void
.end method

.method public registerHelper(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V
    .locals 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "helpers"    # Ljava/util/List;
    .param p4, "constructorClass"    # Ljava/lang/Class;

    .prologue
    .line 891
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 894
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 896
    .local v0, "providerClass":Ljava/lang/Class;
    if-nez p4, :cond_1

    .line 897
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v0    # "providerClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 899
    .restart local v0    # "providerClass":Ljava/lang/Class;
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    .end local v0    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 903
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to register the helper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerHelpers(Ljava/lang/ClassLoader;Ljava/net/URL;Ljava/util/List;Ljava/lang/Class;)V
    .locals 9
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "configUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 924
    .local p3, "helpers":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p4, "constructorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 926
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    sget v6, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 931
    invoke-direct {p0, v2}, Lorg/restlet/engine/Engine;->getProviderClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p3, p4}, Lorg/restlet/engine/Engine;->registerHelper(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V

    .line 933
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto :goto_0

    .line 941
    :cond_0
    if-eqz v4, :cond_3

    .line 942
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 949
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read the provider descriptor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 941
    if-eqz v3, :cond_1

    .line 942
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 945
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 946
    .local v1, "ioe":Ljava/io/IOException;
    :goto_3
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "Exception while detecting the helpers."

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 941
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_2

    .line 942
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_2
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 945
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 941
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 935
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public registerHelpers(Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V
    .locals 4
    .param p1, "descriptorPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    .local p2, "helpers":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p3, "constructorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/restlet/engine/Engine;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 965
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 968
    .local v2, "configUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-eqz v2, :cond_0

    .line 969
    move-object v1, v2

    .line 970
    .local v1, "configEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 971
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    invoke-virtual {p0, v0, v3, p2, p3}, Lorg/restlet/engine/Engine;->registerHelpers(Ljava/lang/ClassLoader;Ljava/net/URL;Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_0

    .line 975
    .end local v1    # "configEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_0
    return-void
.end method

.method public registerUrlFactory()V
    .locals 1

    .prologue
    .line 989
    new-instance v0, Lorg/restlet/engine/Engine$2;

    invoke-direct {v0, p0}, Lorg/restlet/engine/Engine$2;-><init>(Lorg/restlet/engine/Engine;)V

    invoke-static {v0}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    .line 1038
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "newClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1047
    iput-object p1, p0, Lorg/restlet/engine/Engine;->classLoader:Ljava/lang/ClassLoader;

    .line 1048
    return-void
.end method

.method public setLoggerFacade(Lorg/restlet/engine/log/LoggerFacade;)V
    .locals 0
    .param p1, "loggerFacade"    # Lorg/restlet/engine/log/LoggerFacade;

    .prologue
    .line 1057
    iput-object p1, p0, Lorg/restlet/engine/Engine;->loggerFacade:Lorg/restlet/engine/log/LoggerFacade;

    .line 1058
    return-void
.end method

.method public setRegisteredAuthenticators(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/security/AuthenticatorHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, "registeredAuthenticators":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/security/AuthenticatorHelper;>;"
    iget-object v1, p0, Lorg/restlet/engine/Engine;->registeredAuthenticators:Ljava/util/List;

    monitor-enter v1

    .line 1069
    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredAuthenticators:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 1070
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredAuthenticators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1072
    if-eqz p1, :cond_0

    .line 1073
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredAuthenticators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1077
    :cond_0
    monitor-exit v1

    .line 1078
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRegisteredClients(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Client;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1088
    .local p1, "registeredClients":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Client;>;>;"
    iget-object v1, p0, Lorg/restlet/engine/Engine;->registeredClients:Ljava/util/List;

    monitor-enter v1

    .line 1089
    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredClients:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 1090
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1092
    if-eqz p1, :cond_0

    .line 1093
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1096
    :cond_0
    monitor-exit v1

    .line 1097
    return-void

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRegisteredConverters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/converter/ConverterHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1107
    .local p1, "registeredConverters":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/converter/ConverterHelper;>;"
    iget-object v1, p0, Lorg/restlet/engine/Engine;->registeredConverters:Ljava/util/List;

    monitor-enter v1

    .line 1108
    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredConverters:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 1109
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredConverters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1111
    if-eqz p1, :cond_0

    .line 1112
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredConverters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1115
    :cond_0
    monitor-exit v1

    .line 1116
    return-void

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRegisteredProtocols(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ProtocolHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1125
    .local p1, "registeredProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/ProtocolHelper;>;"
    iget-object v1, p0, Lorg/restlet/engine/Engine;->registeredProtocols:Ljava/util/List;

    monitor-enter v1

    .line 1126
    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredProtocols:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 1127
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1129
    if-eqz p1, :cond_0

    .line 1130
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredProtocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1133
    :cond_0
    monitor-exit v1

    .line 1134
    return-void

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRegisteredServers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/ConnectorHelper",
            "<",
            "Lorg/restlet/Server;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1144
    .local p1, "registeredServers":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/ConnectorHelper<Lorg/restlet/Server;>;>;"
    iget-object v1, p0, Lorg/restlet/engine/Engine;->registeredServers:Ljava/util/List;

    monitor-enter v1

    .line 1145
    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredServers:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 1146
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1148
    if-eqz p1, :cond_0

    .line 1149
    iget-object v0, p0, Lorg/restlet/engine/Engine;->registeredServers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1152
    :cond_0
    monitor-exit v1

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "newClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1162
    iput-object p1, p0, Lorg/restlet/engine/Engine;->userClassLoader:Ljava/lang/ClassLoader;

    .line 1163
    return-void
.end method
