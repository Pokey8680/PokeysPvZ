.class public Lcom/inmobi/commons/analytics/iat/impl/GoalList;
.super Ljava/util/Vector;
.source "GoalList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/inmobi/commons/analytics/iat/impl/Goal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method

.method public static getLoggedGoals()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "eventlog"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    .line 30
    :cond_0
    if-nez v0, :cond_1

    .line 31
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;-><init>()V

    .line 34
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addGoal(Ljava/lang/String;IJIZ)Z
    .locals 9

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->setSynced(Z)V

    .line 121
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    const-string v1, "GoalName is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 126
    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_3

    .line 128
    :cond_2
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    const-string v1, "GoalCount cant be 0 or RetryTime cannot be negative"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 134
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 137
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 142
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalCount()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalCount(I)V

    .line 144
    :cond_5
    invoke-virtual {v0, p5}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryCount(I)V

    .line 145
    invoke-virtual {v0, p3, p4}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryTime(J)V

    .line 146
    invoke-virtual {v0, p6}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setDuplicateGoal(Z)V

    .line 147
    const/4 v0, 0x1

    .line 152
    :goto_1
    if-nez v0, :cond_6

    .line 154
    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/Goal;-><init>(Ljava/lang/String;IJIZ)V

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public getGoal(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/Goal;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    .line 52
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "GoalName is null"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 72
    :goto_0
    return-object v0

    .line 58
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 62
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 70
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 72
    goto :goto_0
.end method

.method public increaseRetryTime(Ljava/lang/String;IZ)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 166
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    :cond_0
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "GoalName cannot be null"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    :goto_0
    return v0

    .line 171
    :cond_2
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->getGoal(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-result-object v2

    .line 174
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxWaitTime()I

    move-result v1

    .line 175
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxRetry()I

    move-result v3

    .line 176
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getRetryTime()J

    move-result-wide v4

    .line 179
    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getRetryCount()I

    move-result v6

    .line 180
    int-to-long v8, v1

    cmp-long v7, v4, v8

    if-gez v7, :cond_4

    .line 182
    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    const-wide/16 v8, 0x7530

    add-long/2addr v4, v8

    .line 183
    int-to-long v8, v1

    cmp-long v7, v4, v8

    if-lez v7, :cond_3

    .line 185
    int-to-long v4, v1

    .line 192
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->removeGoal(Ljava/lang/String;I)Z

    .line 193
    add-int/lit8 v6, v6, 0x1

    .line 194
    if-ge v6, v3, :cond_5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v7, p3

    .line 196
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->addGoal(Ljava/lang/String;IJIZ)Z

    .line 202
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_4
    int-to-long v4, v1

    goto :goto_1

    .line 200
    :cond_5
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_DUMPED:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 205
    :catch_0
    move-exception v1

    .line 207
    const-string v2, "[InMobi]-[AdTracker]-4.4.3"

    const-string v3, "Cant increase retry time"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeGoal(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->setSynced(Z)V

    .line 81
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :cond_0
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "GoalName is null"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return v0

    .line 86
    :cond_1
    if-ge p2, v1, :cond_2

    .line 88
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "GoalCount cannot be 0 or negative"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 95
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalCount()I

    move-result v2

    sub-int/2addr v2, p2

    .line 98
    const-string v3, "download"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    move v0, v1

    .line 112
    goto :goto_0

    .line 103
    :cond_5
    if-gtz v2, :cond_6

    .line 104
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_6
    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalCount(I)V

    goto :goto_1
.end method

.method public saveGoals()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1, p0}, Lcom/inmobi/commons/internal/FileOperations;->saveToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
