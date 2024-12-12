.class public Lorg/restlet/routing/Validator;
.super Lorg/restlet/routing/Filter;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/routing/Validator$ValidateInfo;
    }
.end annotation


# instance fields
.field private volatile validations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Validator$ValidateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/routing/Validator;-><init>(Lorg/restlet/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/routing/Validator;-><init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V

    .line 117
    return-void
.end method

.method private getValidations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/Validator$ValidateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/restlet/routing/Validator;->validations:Ljava/util/List;

    .line 174
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    if-nez v0, :cond_1

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/restlet/routing/Validator;->validations:Ljava/util/List;

    .line 177
    if-nez v0, :cond_0

    .line 178
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/routing/Validator;->validations:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 180
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    .restart local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 182
    :cond_1
    return-object v0

    .line 180
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    .restart local v1    # "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    .restart local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/Validator$ValidateInfo;>;"
    goto :goto_0
.end method


# virtual methods
.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 134
    iget-object v3, p0, Lorg/restlet/routing/Validator;->validations:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 135
    invoke-direct {p0}, Lorg/restlet/routing/Validator;->getValidations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Validator$ValidateInfo;

    .line 136
    .local v1, "validate":Lorg/restlet/routing/Validator$ValidateInfo;
    iget-boolean v3, v1, Lorg/restlet/routing/Validator$ValidateInfo;->required:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget-object v4, v1, Lorg/restlet/routing/Validator$ValidateInfo;->attribute:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    sget-object v3, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find the \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lorg/restlet/routing/Validator$ValidateInfo;->attribute:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" attribute in the request. Please check your request."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v3, v1, Lorg/restlet/routing/Validator$ValidateInfo;->format:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget-object v4, v1, Lorg/restlet/routing/Validator$ValidateInfo;->attribute:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    iget-object v3, v1, Lorg/restlet/routing/Validator$ValidateInfo;->format:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    sget-object v3, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to validate the value of the \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lorg/restlet/routing/Validator$ValidateInfo;->attribute:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" attribute. The expected format is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lorg/restlet/routing/Validator$ValidateInfo;->format:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Java Regex). Please check your request."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "validate":Lorg/restlet/routing/Validator$ValidateInfo;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public validate(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/restlet/routing/Validator;->getValidations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/routing/Validator$ValidateInfo;

    invoke-direct {v1, p1, p2, p3}, Lorg/restlet/routing/Validator$ValidateInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public validateFormat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/restlet/routing/Validator;->getValidations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/routing/Validator$ValidateInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lorg/restlet/routing/Validator$ValidateInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public validatePresence(Ljava/lang/String;)V
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/restlet/routing/Validator;->getValidations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/routing/Validator$ValidateInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/restlet/routing/Validator$ValidateInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method
