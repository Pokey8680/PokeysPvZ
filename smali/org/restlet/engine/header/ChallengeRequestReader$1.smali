.class Lorg/restlet/engine/header/ChallengeRequestReader$1;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "ChallengeRequestReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/header/ChallengeRequestReader;->readValue()Lorg/restlet/data/ChallengeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Parameter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/header/ChallengeRequestReader;


# direct methods
.method constructor <init>(Lorg/restlet/engine/header/ChallengeRequestReader;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/restlet/engine/header/ChallengeRequestReader$1;->this$0:Lorg/restlet/engine/header/ChallengeRequestReader;

    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lorg/restlet/data/Parameter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ChallengeRequestReader$1;->append(Lorg/restlet/data/Parameter;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Parameter;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 0
    .param p1, "value"    # Lorg/restlet/data/Parameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Parameter;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ChallengeRequestReader$1;->appendExtension(Lorg/restlet/util/NamedValue;)Lorg/restlet/engine/header/HeaderWriter;

    .line 80
    return-object p0
.end method
