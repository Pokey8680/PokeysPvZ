.class Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
.super Ljava/lang/Object;
.source "TunnelFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field agentAttributes:Ljava/util/Map;
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

.field newValue:Ljava/lang/String;

.field oldValue:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->agentAttributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method build()Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;

    iget-object v1, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->oldValue:Ljava/lang/String;

    iget-object v2, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->newValue:Ljava/lang/String;

    iget-object v3, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->agentAttributes:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method putAgentAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->agentAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method setNewValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->newValue:Ljava/lang/String;

    .line 110
    return-void
.end method

.method setOldValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldValue"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->oldValue:Ljava/lang/String;

    .line 114
    return-void
.end method
