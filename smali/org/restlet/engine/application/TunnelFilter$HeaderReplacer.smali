.class Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
.super Ljava/lang/Object;
.source "TunnelFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/engine/application/TunnelFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderReplacer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    }
.end annotation


# instance fields
.field private final agentAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headerNew:Ljava/lang/String;

.field private final headerOld:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "headerOld"    # Ljava/lang/String;
    .param p2, "headerNew"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "agentAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->headerOld:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->headerNew:Ljava/lang/String;

    .line 130
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->agentAttributes:Ljava/util/Map;

    .line 131
    return-void
.end method


# virtual methods
.method public getAgentAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->agentAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaderNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->headerNew:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderOld()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->headerOld:Ljava/lang/String;

    return-object v0
.end method

.method public matchesConditions(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 5
    .param p2, "headerOld"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "agentAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 163
    .local v1, "checked":Z
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->getAgentAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 164
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "attribute":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 169
    :goto_1
    goto :goto_0

    .line 167
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 170
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->getHeaderOld()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 173
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->getHeaderOld()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 175
    :cond_2
    return v1
.end method
