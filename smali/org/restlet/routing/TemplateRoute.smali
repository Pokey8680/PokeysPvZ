.class public Lorg/restlet/routing/TemplateRoute;
.super Lorg/restlet/routing/Route;
.source "TemplateRoute.java"


# instance fields
.field private volatile matchingQuery:Z

.field private volatile template:Lorg/restlet/routing/Template;


# direct methods
.method public constructor <init>(Lorg/restlet/Restlet;)V
    .locals 2
    .param p1, "next"    # Lorg/restlet/Restlet;

    .prologue
    const/4 v1, 0x0

    .line 73
    move-object v0, v1

    check-cast v0, Lorg/restlet/routing/Template;

    invoke-direct {p0, v1, v0, p1}, Lorg/restlet/routing/TemplateRoute;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/routing/Template;Lorg/restlet/Restlet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/restlet/routing/Router;Ljava/lang/String;Lorg/restlet/Restlet;)V
    .locals 7
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "uriTemplate"    # Ljava/lang/String;
    .param p3, "next"    # Lorg/restlet/Restlet;

    .prologue
    const/4 v2, 0x1

    .line 90
    new-instance v0, Lorg/restlet/routing/Template;

    const/16 v3, 0xe

    const-string v4, ""

    const/4 v6, 0x0

    move-object v1, p2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    invoke-direct {p0, p1, v0, p3}, Lorg/restlet/routing/TemplateRoute;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/routing/Template;Lorg/restlet/Restlet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/restlet/routing/Router;Lorg/restlet/routing/Template;Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "template"    # Lorg/restlet/routing/Template;
    .param p3, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p3}, Lorg/restlet/routing/Route;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/Restlet;)V

    .line 106
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/restlet/routing/TemplateRoute;->matchingQuery:Z

    .line 108
    iput-object p2, p0, Lorg/restlet/routing/TemplateRoute;->template:Lorg/restlet/routing/Template;

    .line 109
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/routing/Router;->getDefaultMatchingQuery()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 9
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v8, 0x0

    .line 125
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->isMatchingQuery()Z

    move-result v6

    invoke-virtual {v5, v8, v6}, Lorg/restlet/data/Reference;->getRemainingPart(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "remainingPart":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Lorg/restlet/routing/Template;->parse(Ljava/lang/String;Lorg/restlet/Request;)I

    move-result v2

    .line 130
    .local v2, "matchedLength":I
    if-nez v2, :cond_1

    .line 131
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "No characters were matched"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 191
    .end local v2    # "matchedLength":I
    .end local v4    # "remainingPart":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 134
    .restart local v2    # "matchedLength":I
    .restart local v4    # "remainingPart":Ljava/lang/String;
    :cond_1
    if-lez v2, :cond_6

    .line 135
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " characters were matched"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 141
    :cond_2
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "matchedPart":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v0

    .line 144
    .local v0, "baseRef":Lorg/restlet/data/Reference;
    if-nez v0, :cond_4

    .line 145
    new-instance v0, Lorg/restlet/data/Reference;

    .end local v0    # "baseRef":Lorg/restlet/data/Reference;
    invoke-direct {v0, v3}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v0    # "baseRef":Lorg/restlet/data/Reference;
    :goto_1
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/restlet/data/Reference;->setBaseRef(Lorg/restlet/data/Reference;)V

    .line 153
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->isMatchingQuery()Z

    move-result v6

    invoke-virtual {v5, v8, v6}, Lorg/restlet/data/Reference;->getRemainingPart(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 158
    if-eqz v4, :cond_5

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 160
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New base URI: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\". New remaining part: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 175
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "Delegating the call to the target Restlet"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_4
    new-instance v1, Lorg/restlet/data/Reference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v8}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .end local v0    # "baseRef":Lorg/restlet/data/Reference;
    .local v1, "baseRef":Lorg/restlet/data/Reference;
    move-object v0, v1

    .end local v1    # "baseRef":Lorg/restlet/data/Reference;
    .restart local v0    # "baseRef":Lorg/restlet/data/Reference;
    goto/16 :goto_1

    .line 167
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New base URI: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\". No remaining part to match"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    .line 181
    .end local v0    # "baseRef":Lorg/restlet/data/Reference;
    .end local v3    # "matchedPart":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 182
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to match this pattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 187
    :cond_7
    sget-object v5, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p2, v5}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto/16 :goto_0
.end method

.method public getMatchingMode()I
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/routing/Template;->getMatchingMode()I

    move-result v0

    return v0
.end method

.method public getTemplate()Lorg/restlet/routing/Template;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/restlet/routing/TemplateRoute;->template:Lorg/restlet/routing/Template;

    return-object v0
.end method

.method public isMatchingQuery()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/restlet/routing/TemplateRoute;->matchingQuery:Z

    return v0
.end method

.method public score(Lorg/restlet/Request;Lorg/restlet/Response;)F
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 236
    .local v2, "result":F
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getRouter()Lorg/restlet/routing/Router;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 238
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->isMatchingQuery()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/restlet/data/Reference;->getRemainingPart(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "remainingPart":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/restlet/routing/Template;->match(Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, "matchedLength":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 244
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v3, v4

    .line 246
    .local v3, "totalLength":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 247
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getRouter()Lorg/restlet/routing/Router;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getRouter()Lorg/restlet/routing/Router;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v0

    div-float/2addr v6, v3

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 256
    .end local v0    # "matchedLength":I
    .end local v3    # "totalLength":F
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call score for the \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" URI pattern: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 263
    .end local v1    # "remainingPart":Ljava/lang/String;
    :cond_1
    return v2

    .line 251
    .restart local v0    # "matchedLength":I
    .restart local v1    # "remainingPart":Ljava/lang/String;
    .restart local v3    # "totalLength":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setMatchingMode(I)V
    .locals 1
    .param p1, "matchingMode"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/routing/Template;->setMatchingMode(I)V

    .line 275
    return-void
.end method

.method public setMatchingQuery(Z)V
    .locals 0
    .param p1, "matchingQuery"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lorg/restlet/routing/TemplateRoute;->matchingQuery:Z

    .line 287
    return-void
.end method

.method public setTemplate(Lorg/restlet/routing/Template;)V
    .locals 0
    .param p1, "template"    # Lorg/restlet/routing/Template;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/restlet/routing/TemplateRoute;->template:Lorg/restlet/routing/Template;

    .line 297
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/restlet/routing/TemplateRoute;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
