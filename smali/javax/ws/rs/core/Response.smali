.class public abstract Ljavax/ws/rs/core/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/ws/rs/core/Response$Status;,
        Ljavax/ws/rs/core/Response$StatusType;,
        Ljavax/ws/rs/core/Response$ResponseBuilder;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static created(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2
    .param p0, "location"    # Ljava/net/URI;

    .prologue
    .line 225
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->CREATED:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->location(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 226
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method

.method public static fromResponse(Ljavax/ws/rs/core/Response;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 7
    .param p0, "response"    # Ljavax/ws/rs/core/Response;

    .prologue
    .line 86
    invoke-virtual {p0}, Ljavax/ws/rs/core/Response;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljavax/ws/rs/core/Response;->status(I)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 87
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {p0}, Ljavax/ws/rs/core/Response;->getEntity()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/ws/rs/core/Response$ResponseBuilder;->entity(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 88
    invoke-virtual {p0}, Ljavax/ws/rs/core/Response;->getMetadata()Ljavax/ws/rs/core/MultivaluedMap;

    move-result-object v6

    invoke-interface {v6}, Ljavax/ws/rs/core/MultivaluedMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/ws/rs/core/Response;->getMetadata()Ljavax/ws/rs/core/MultivaluedMap;

    move-result-object v6

    invoke-interface {v6, v1}, Ljavax/ws/rs/core/MultivaluedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 90
    .local v3, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "headerValue":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2}, Ljavax/ws/rs/core/Response$ResponseBuilder;->header(Ljava/lang/String;Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    goto :goto_0

    .line 94
    .end local v1    # "headerName":Ljava/lang/String;
    .end local v2    # "headerValue":Ljava/lang/Object;
    .end local v3    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static noContent()Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2

    .prologue
    .line 235
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->NO_CONTENT:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 236
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method

.method public static notAcceptable(Ljava/util/List;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/ws/rs/core/Variant;",
            ">;)",
            "Ljavax/ws/rs/core/Response$ResponseBuilder;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "variants":Ljava/util/List;, "Ljava/util/List<Ljavax/ws/rs/core/Variant;>;"
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->NOT_ACCEPTABLE:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->variants(Ljava/util/List;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 318
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method

.method public static notModified()Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2

    .prologue
    .line 245
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->NOT_MODIFIED:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 246
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method

.method public static notModified(Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {}, Ljavax/ws/rs/core/Response;->notModified()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 274
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->tag(Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 275
    return-object v0
.end method

.method public static notModified(Ljavax/ws/rs/core/EntityTag;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "tag"    # Ljavax/ws/rs/core/EntityTag;

    .prologue
    .line 257
    invoke-static {}, Ljavax/ws/rs/core/Response;->notModified()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 258
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->tag(Ljavax/ws/rs/core/EntityTag;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 259
    return-object v0
.end method

.method public static ok()Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2

    .prologue
    .line 138
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->OK:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 139
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method

.method public static ok(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "entity"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-static {}, Ljavax/ws/rs/core/Response;->ok()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 152
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->entity(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 153
    return-object v0
.end method

.method public static ok(Ljava/lang/Object;Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Ljavax/ws/rs/core/Response;->ok()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 183
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->entity(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 184
    invoke-virtual {v0, p1}, Ljavax/ws/rs/core/Response$ResponseBuilder;->type(Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 185
    return-object v0
.end method

.method public static ok(Ljava/lang/Object;Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "type"    # Ljavax/ws/rs/core/MediaType;

    .prologue
    .line 166
    invoke-static {}, Ljavax/ws/rs/core/Response;->ok()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 167
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->entity(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 168
    invoke-virtual {v0, p1}, Ljavax/ws/rs/core/Response$ResponseBuilder;->type(Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 169
    return-object v0
.end method

.method public static ok(Ljava/lang/Object;Ljavax/ws/rs/core/Variant;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "variant"    # Ljavax/ws/rs/core/Variant;

    .prologue
    .line 198
    invoke-static {}, Ljavax/ws/rs/core/Response;->ok()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 199
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->entity(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 200
    invoke-virtual {v0, p1}, Ljavax/ws/rs/core/Response$ResponseBuilder;->variant(Ljavax/ws/rs/core/Variant;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 201
    return-object v0
.end method

.method public static seeOther(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2
    .param p0, "location"    # Ljava/net/URI;

    .prologue
    .line 290
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->SEE_OTHER:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->location(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 291
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method

.method public static serverError()Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2

    .prologue
    .line 210
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->INTERNAL_SERVER_ERROR:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 211
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method

.method public static status(I)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 127
    invoke-static {}, Ljavax/ws/rs/core/Response$ResponseBuilder;->newInstance()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 128
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->status(I)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 129
    return-object v0
.end method

.method public static status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "status"    # Ljavax/ws/rs/core/Response$Status;

    .prologue
    .line 116
    invoke-static {p0}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$StatusType;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static status(Ljavax/ws/rs/core/Response$StatusType;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 1
    .param p0, "status"    # Ljavax/ws/rs/core/Response$StatusType;

    .prologue
    .line 104
    invoke-static {}, Ljavax/ws/rs/core/Response$ResponseBuilder;->newInstance()Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 105
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->status(Ljavax/ws/rs/core/Response$StatusType;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    .line 106
    return-object v0
.end method

.method public static temporaryRedirect(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;
    .locals 2
    .param p0, "location"    # Ljava/net/URI;

    .prologue
    .line 305
    sget-object v1, Ljavax/ws/rs/core/Response$Status;->TEMPORARY_REDIRECT:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v1}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->location(Ljava/net/URI;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    .line 306
    .local v0, "b":Ljavax/ws/rs/core/Response$ResponseBuilder;
    return-object v0
.end method


# virtual methods
.method public abstract getEntity()Ljava/lang/Object;
.end method

.method public abstract getMetadata()Ljavax/ws/rs/core/MultivaluedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/ws/rs/core/MultivaluedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()I
.end method
