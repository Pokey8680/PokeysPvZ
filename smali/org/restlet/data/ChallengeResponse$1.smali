.class Lorg/restlet/data/ChallengeResponse$1;
.super Ljava/lang/Object;
.source "ChallengeResponse.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/data/ChallengeResponse;->getPrincipal()Ljava/security/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/data/ChallengeResponse;


# direct methods
.method constructor <init>(Lorg/restlet/data/ChallengeResponse;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lorg/restlet/data/ChallengeResponse$1;->this$0:Lorg/restlet/data/ChallengeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/restlet/data/ChallengeResponse$1;->this$0:Lorg/restlet/data/ChallengeResponse;

    invoke-virtual {v0}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
