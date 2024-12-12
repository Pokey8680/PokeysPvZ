.class public Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;
.super Ljava/lang/Object;
.source "GetLtvpRulesResponse.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHardExpiry()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->e:J

    return-wide v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSoftExpiry()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->d:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->b:J

    return-wide v0
.end method

.method public setHardExpiry(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->e:J

    .line 42
    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setRules(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->c:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public setSoftExpiry(J)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->d:J

    .line 36
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->b:J

    .line 24
    return-void
.end method
