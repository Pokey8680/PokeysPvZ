.class public Lorg/restlet/Application;
.super Lorg/restlet/Restlet;
.source "Application.java"


# static fields
.field private static final CURRENT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/restlet/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile helper:Lorg/restlet/engine/application/ApplicationHelper;

.field private volatile inboundRoot:Lorg/restlet/Restlet;

.field private volatile outboundRoot:Lorg/restlet/Restlet;

.field private final roles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Lorg/restlet/util/ServiceList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/restlet/Application;->CURRENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/Application;-><init>(Lorg/restlet/Context;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 152
    invoke-direct {p0, p1}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 154
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lorg/restlet/engine/application/ApplicationHelper;

    invoke-direct {v0, p0}, Lorg/restlet/engine/application/ApplicationHelper;-><init>(Lorg/restlet/Application;)V

    iput-object v0, p0, Lorg/restlet/Application;->helper:Lorg/restlet/engine/application/ApplicationHelper;

    .line 156
    iget-object v0, p0, Lorg/restlet/Application;->helper:Lorg/restlet/engine/application/ApplicationHelper;

    invoke-virtual {v0, p1}, Lorg/restlet/engine/application/ApplicationHelper;->setContext(Lorg/restlet/Context;)V

    .line 159
    :cond_0
    iput-object v1, p0, Lorg/restlet/Application;->outboundRoot:Lorg/restlet/Restlet;

    .line 160
    iput-object v1, p0, Lorg/restlet/Application;->inboundRoot:Lorg/restlet/Restlet;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/Application;->roles:Ljava/util/List;

    .line 162
    new-instance v0, Lorg/restlet/util/ServiceList;

    invoke-direct {v0, p1}, Lorg/restlet/util/ServiceList;-><init>(Lorg/restlet/Context;)V

    iput-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    .line 163
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/TunnelService;

    invoke-direct {v1, v2, v2}, Lorg/restlet/service/TunnelService;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 164
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/StatusService;

    invoke-direct {v1}, Lorg/restlet/service/StatusService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 165
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/DecoderService;

    invoke-direct {v1}, Lorg/restlet/service/DecoderService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 166
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/EncoderService;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/restlet/service/EncoderService;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 167
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/RangeService;

    invoke-direct {v1}, Lorg/restlet/service/RangeService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 168
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/ConnectorService;

    invoke-direct {v1}, Lorg/restlet/service/ConnectorService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 169
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/ConnegService;

    invoke-direct {v1}, Lorg/restlet/service/ConnegService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 170
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/ConverterService;

    invoke-direct {v1}, Lorg/restlet/service/ConverterService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 171
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/MetadataService;

    invoke-direct {v1}, Lorg/restlet/service/MetadataService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 173
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    new-instance v1, Lorg/restlet/service/TaskService;

    invoke-direct {v1}, Lorg/restlet/service/TaskService;-><init>()V

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 174
    return-void
.end method

.method public static getCurrent()Lorg/restlet/Application;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lorg/restlet/Application;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Application;

    return-object v0
.end method

.method private getHelper()Lorg/restlet/engine/application/ApplicationHelper;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/restlet/Application;->helper:Lorg/restlet/engine/application/ApplicationHelper;

    return-object v0
.end method

.method public static setCurrent(Lorg/restlet/Application;)V
    .locals 1
    .param p0, "application"    # Lorg/restlet/Application;

    .prologue
    .line 113
    sget-object v0, Lorg/restlet/Application;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 114
    return-void
.end method


# virtual methods
.method public createInboundRoot()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public createOutboundRoot()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/application/ApplicationHelper;->getFirstOutboundFilter()Lorg/restlet/routing/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getConnectorService()Lorg/restlet/service/ConnectorService;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/ConnectorService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/ConnectorService;

    return-object v0
.end method

.method public getConnegService()Lorg/restlet/service/ConnegService;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/ConnegService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/ConnegService;

    return-object v0
.end method

.method public getConverterService()Lorg/restlet/service/ConverterService;
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/ConverterService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/ConverterService;

    return-object v0
.end method

.method public getDecoderService()Lorg/restlet/service/DecoderService;
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/DecoderService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/DecoderService;

    return-object v0
.end method

.method public getEncoderService()Lorg/restlet/service/EncoderService;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/EncoderService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/EncoderService;

    return-object v0
.end method

.method public getInboundRoot()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/restlet/Application;->inboundRoot:Lorg/restlet/Restlet;

    if-nez v0, :cond_1

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Application;->inboundRoot:Lorg/restlet/Restlet;

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/restlet/Application;->createInboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/Application;->inboundRoot:Lorg/restlet/Restlet;

    .line 272
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_1
    iget-object v0, p0, Lorg/restlet/Application;->inboundRoot:Lorg/restlet/Restlet;

    return-object v0

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMetadataService()Lorg/restlet/service/MetadataService;
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/MetadataService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/MetadataService;

    return-object v0
.end method

.method public getOutboundRoot()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/restlet/Application;->outboundRoot:Lorg/restlet/Restlet;

    if-nez v0, :cond_1

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Application;->outboundRoot:Lorg/restlet/Restlet;

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lorg/restlet/Application;->createOutboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/Application;->outboundRoot:Lorg/restlet/Restlet;

    .line 298
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/restlet/Application;->outboundRoot:Lorg/restlet/Restlet;

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRangeService()Lorg/restlet/service/RangeService;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/RangeService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/RangeService;

    return-object v0
.end method

.method public getRole(Ljava/lang/String;)Lorg/restlet/security/Role;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-virtual {p0}, Lorg/restlet/Application;->getRoles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/security/Role;

    .line 322
    .local v1, "role":Lorg/restlet/security/Role;
    invoke-virtual {v1}, Lorg/restlet/security/Role;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    .end local v1    # "role":Lorg/restlet/security/Role;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lorg/restlet/Application;->roles:Ljava/util/List;

    return-object v0
.end method

.method public getServices()Lorg/restlet/util/ServiceList;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/restlet/Application;->services:Lorg/restlet/util/ServiceList;

    return-object v0
.end method

.method public getStatusService()Lorg/restlet/service/StatusService;
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/StatusService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/StatusService;

    return-object v0
.end method

.method public getTaskService()Lorg/restlet/service/TaskService;
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/TaskService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/TaskService;

    return-object v0
.end method

.method public getTunnelService()Lorg/restlet/service/TunnelService;
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/TunnelService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/TunnelService;

    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 378
    invoke-super {p0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 380
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/engine/application/ApplicationHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 383
    :cond_0
    return-void
.end method

.method public declared-synchronized setClientRoot(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    .local p1, "clientRootClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/restlet/Application;->setOutboundRoot(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectorService(Lorg/restlet/service/ConnectorService;)V
    .locals 1
    .param p1, "connectorService"    # Lorg/restlet/service/ConnectorService;

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 406
    return-void
.end method

.method public setConnegService(Lorg/restlet/service/ConnegService;)V
    .locals 1
    .param p1, "connegService"    # Lorg/restlet/service/ConnegService;

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 416
    return-void
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 420
    invoke-super {p0, p1}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 421
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/engine/application/ApplicationHelper;->setContext(Lorg/restlet/Context;)V

    .line 422
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->setContext(Lorg/restlet/Context;)V

    .line 423
    return-void
.end method

.method public setConverterService(Lorg/restlet/service/ConverterService;)V
    .locals 1
    .param p1, "converterService"    # Lorg/restlet/service/ConverterService;

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 433
    return-void
.end method

.method public setDecoderService(Lorg/restlet/service/DecoderService;)V
    .locals 1
    .param p1, "decoderService"    # Lorg/restlet/service/DecoderService;

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 443
    return-void
.end method

.method public setEncoderService(Lorg/restlet/service/EncoderService;)V
    .locals 1
    .param p1, "encoderService"    # Lorg/restlet/service/EncoderService;

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 453
    return-void
.end method

.method public declared-synchronized setInboundRoot(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "inboundRootClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/restlet/Application;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Application;->setInboundRoot(Lorg/restlet/Restlet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInboundRoot(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "inboundRoot"    # Lorg/restlet/Restlet;

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/restlet/Application;->inboundRoot:Lorg/restlet/Restlet;

    .line 475
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lorg/restlet/Application;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMetadataService(Lorg/restlet/service/MetadataService;)V
    .locals 1
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 487
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 488
    return-void
.end method

.method public declared-synchronized setOutboundRoot(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "outboundRootClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/restlet/Application;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Application;->setOutboundRoot(Lorg/restlet/Restlet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOutboundRoot(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "outboundRoot"    # Lorg/restlet/Restlet;

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/restlet/Application;->outboundRoot:Lorg/restlet/Restlet;

    .line 510
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lorg/restlet/Application;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_0
    monitor-exit p0

    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRangeService(Lorg/restlet/service/RangeService;)V
    .locals 1
    .param p1, "rangeService"    # Lorg/restlet/service/RangeService;

    .prologue
    .line 522
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 523
    return-void
.end method

.method public setRoles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "roles":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    invoke-virtual {p0}, Lorg/restlet/Application;->getRoles()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 534
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Application;->getRoles()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lorg/restlet/Application;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 537
    if-eqz p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lorg/restlet/Application;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    :cond_0
    monitor-exit v1

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatusService(Lorg/restlet/service/StatusService;)V
    .locals 1
    .param p1, "statusService"    # Lorg/restlet/service/StatusService;

    .prologue
    .line 551
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 552
    return-void
.end method

.method public setTaskService(Lorg/restlet/service/TaskService;)V
    .locals 1
    .param p1, "taskService"    # Lorg/restlet/service/TaskService;

    .prologue
    .line 561
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 562
    return-void
.end method

.method public setTunnelService(Lorg/restlet/service/TunnelService;)V
    .locals 1
    .param p1, "tunnelService"    # Lorg/restlet/service/TunnelService;

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 572
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Application;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/application/ApplicationHelper;->start()V

    .line 585
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/ServiceList;->start()V

    .line 587
    invoke-virtual {p0}, Lorg/restlet/Application;->getInboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {p0}, Lorg/restlet/Application;->getInboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->start()V

    .line 591
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/Application;->getOutboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {p0}, Lorg/restlet/Application;->getOutboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->start()V

    .line 595
    :cond_2
    invoke-super {p0}, Lorg/restlet/Restlet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_3
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Application;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    invoke-super {p0}, Lorg/restlet/Restlet;->stop()V

    .line 609
    invoke-virtual {p0}, Lorg/restlet/Application;->getOutboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lorg/restlet/Application;->getOutboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->stop()V

    .line 613
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Application;->getInboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lorg/restlet/Application;->getInboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Restlet;->stop()V

    .line 617
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/Application;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/ServiceList;->stop()V

    .line 619
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 620
    invoke-direct {p0}, Lorg/restlet/Application;->getHelper()Lorg/restlet/engine/application/ApplicationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/application/ApplicationHelper;->stop()V

    .line 624
    :cond_2
    invoke-static {}, Lorg/restlet/engine/resource/AnnotationUtils;->clearCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :cond_3
    monitor-exit p0

    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
