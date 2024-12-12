.class public Lorg/codegist/crest/security/AuthorizationToken;
.super Ljava/lang/Object;
.source "AuthorizationToken.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/codegist/crest/security/AuthorizationToken;->name:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/codegist/crest/security/AuthorizationToken;->value:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/codegist/crest/security/AuthorizationToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codegist/crest/security/AuthorizationToken;->value:Ljava/lang/String;

    return-object v0
.end method
