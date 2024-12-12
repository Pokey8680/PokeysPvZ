.class public Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;
.super Lcom/google/inject/AbstractModule;
.source "AndroidPushServiceModule.java"


# instance fields
.field private context:Landroid/content/Context;

.field private pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;-><init>(Landroid/content/Context;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushListener"    # Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "context",
            "pushListener"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    iput-object p1, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 20
    instance-of v0, p1, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;

    return v0
.end method

.method protected configure()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v0, :cond_0

    .line 34
    const-class v0, Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    invoke-virtual {p0, v0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 38
    :goto_0
    const-class v0, Lcom/ea/eadp/pushnotification/services/IPushService;

    invoke-virtual {p0, v0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 39
    return-void

    .line 36
    :cond_0
    const-class v0, Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    invoke-virtual {p0, v0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Lcom/google/inject/Provider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 20
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v7, p1, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;

    .local v0, "other":Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;
    invoke-virtual {v0, p0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->canEqual(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getContext()Landroid/content/Context;

    move-result-object v3

    .local v3, "this$context":Landroid/content/Context;
    invoke-virtual {v0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "other$context":Landroid/content/Context;
    if-nez v3, :cond_5

    if-eqz v1, :cond_6

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getPushListener()Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v4

    .local v4, "this$pushListener":Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    invoke-virtual {v0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getPushListener()Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v2

    .local v2, "other$pushListener":Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    if-nez v4, :cond_7

    if-eqz v2, :cond_0

    :goto_1
    move v5, v6

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getPushListener()Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 20
    const/16 v2, 0x1f

    .local v2, "PRIME":I
    const/4 v3, 0x1

    .local v3, "result":I
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "$context":Landroid/content/Context;
    if-nez v0, :cond_0

    move v4, v5

    :goto_0
    add-int/lit8 v3, v4, 0x1f

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getPushListener()Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v1

    .local v1, "$pushListener":Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    mul-int/lit8 v4, v3, 0x1f

    if-nez v1, :cond_1

    :goto_1
    add-int v3, v4, v5

    return v3

    .end local v1    # "$pushListener":Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    .restart local v1    # "$pushListener":Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1
.end method

.method provideGcm()Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1
    .annotation runtime Lcom/google/inject/Provides;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->context:Landroid/content/Context;

    return-void
.end method

.method public setPushListener(Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
    .locals 0
    .param p1, "pushListener"    # Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidPushServiceModule(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/modules/AndroidPushServiceModule;->getPushListener()Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
