.class public Lorg/restlet/util/WrapperRestlet;
.super Lorg/restlet/Restlet;
.source "WrapperRestlet.java"


# instance fields
.field private wrappedRestlet:Lorg/restlet/Restlet;


# direct methods
.method public constructor <init>(Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "wrappedRestlet"    # Lorg/restlet/Restlet;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/restlet/Restlet;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    .line 65
    return-void
.end method


# virtual methods
.method public getApplication()Lorg/restlet/Application;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getApplication()Lorg/restlet/Application;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 105
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->isStarted()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->isStopped()Z

    move-result v0

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0, p1}, Lorg/restlet/Restlet;->setAuthor(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0, p1}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 125
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0, p1}, Lorg/restlet/Restlet;->setDescription(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0, p1}, Lorg/restlet/Restlet;->setName(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0, p1}, Lorg/restlet/Restlet;->setOwner(Ljava/lang/String;)V

    .line 140
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
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
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
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/restlet/util/WrapperRestlet;->wrappedRestlet:Lorg/restlet/Restlet;

    invoke-virtual {v0}, Lorg/restlet/Restlet;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
