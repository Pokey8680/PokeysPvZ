.class public Lcom/inmobi/commons/analytics/iat/impl/Goal;
.super Ljava/lang/Object;
.source "Goal.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, v2}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalCount(I)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalName(Ljava/lang/String;)V

    .line 21
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryTime(J)V

    .line 22
    invoke-virtual {p0, v2}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryCount(I)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setDuplicateGoal(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJIZ)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-gez p2, :cond_0

    .line 29
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalCount(I)V

    .line 35
    :goto_0
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 37
    invoke-virtual {p0, v2, v3}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryTime(J)V

    .line 43
    :goto_1
    if-gez p5, :cond_2

    .line 45
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryCount(I)V

    .line 51
    :goto_2
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p6}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setDuplicateGoal(Z)V

    .line 53
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalCount(I)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryTime(J)V

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0, p5}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryCount(I)V

    goto :goto_2
.end method


# virtual methods
.method public getGoalCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->a:I

    return v0
.end method

.method public getGoalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->d:I

    return v0
.end method

.method public getRetryTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->c:J

    return-wide v0
.end method

.method public isDuplicateGoal()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->e:Z

    return v0
.end method

.method public final setDuplicateGoal(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->e:Z

    .line 86
    return-void
.end method

.method public final setGoalCount(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->a:I

    .line 59
    return-void
.end method

.method public final setGoalName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final setRetryCount(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->d:I

    .line 80
    return-void
.end method

.method public final setRetryTime(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->c:J

    .line 72
    return-void
.end method
