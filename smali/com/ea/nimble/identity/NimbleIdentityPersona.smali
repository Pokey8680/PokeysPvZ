.class public Lcom/ea/nimble/identity/NimbleIdentityPersona;
.super Ljava/lang/Object;
.source "NimbleIdentityPersona.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;,
        Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;,
        Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    }
.end annotation


# instance fields
.field private dateCreated:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private expiryTime:Ljava/util/Date;

.field private isVisible:Ljava/lang/String;

.field private lastAuthenticated:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namespaceName:Ljava/lang/String;

.field private personaId:J

.field private pidId:Ljava/lang/String;

.field private showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

.field private status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field private statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Date;)V
    .locals 4
    .param p2, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "personaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string v1, "personaId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getLongFromObject(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->personaId:J

    .line 109
    const-string v1, "pidId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->pidId:Ljava/lang/String;

    .line 110
    const-string v1, "displayName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->displayName:Ljava/lang/String;

    .line 111
    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->name:Ljava/lang/String;

    .line 112
    const-string v1, "namespaceName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->namespaceName:Ljava/lang/String;

    .line 113
    const-string v1, "status"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->toEnumPersonaStatus(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 114
    const-string v1, "statusReasonCode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->toEnumPersonaStatusReasonCodes(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 115
    const-string v1, "showPersona"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->toEnumPersonaPrivacyLevel(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    .line 116
    const-string v1, "dateCreated"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->dateCreated:Ljava/lang/String;

    .line 117
    const-string v1, "lastAuthenticated"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->lastAuthenticated:Ljava/lang/String;

    .line 119
    const-string v1, "isVisible"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "visible":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 123
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 125
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "visible":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 127
    const-string v1, "true"

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    .line 140
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->expiryTime:Ljava/util/Date;

    .line 141
    return-void

    .line 131
    :cond_1
    const-string v1, "false"

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    goto :goto_0

    .line 135
    .restart local v0    # "visible":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Ljava/lang/String;

    .end local v0    # "visible":Ljava/lang/Object;
    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    goto :goto_0
.end method

.method private getLongFromObject(Ljava/lang/Object;)J
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 334
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 336
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 343
    :goto_0
    return-wide v0

    .line 338
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 340
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 342
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const-string v0, "Identity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static toEnumPersonaPrivacyLevel(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;
    .locals 2
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    .line 663
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    .line 665
    .local v0, "eLevel":Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;
    const-string v1, "NO_ONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_NO_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    .line 682
    :cond_0
    :goto_0
    return-object v0

    .line 669
    :cond_1
    const-string v1, "EVERYONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_EVERYONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    goto :goto_0

    .line 673
    :cond_2
    const-string v1, "FRIENDS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_FRIENDS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    goto :goto_0

    .line 677
    :cond_3
    const-string v1, "FRIENDS_OF_FRIENDS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_FRIENDS_OF_FRIENDS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    goto :goto_0
.end method

.method public static toEnumPersonaStatus(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 2
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 537
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 539
    .local v0, "eStatus":Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    const-string v1, "PENDING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 564
    :cond_0
    :goto_0
    return-object v0

    .line 543
    :cond_1
    const-string v1, "ACTIVE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    .line 547
    :cond_2
    const-string v1, "DEACTIVATED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    .line 551
    :cond_3
    const-string v1, "DISABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    .line 555
    :cond_4
    const-string v1, "DELETED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 557
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    .line 559
    :cond_5
    const-string v1, "BANNED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0
.end method

.method public static toEnumPersonaStatusReasonCodes(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 2
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 572
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 574
    .local v0, "eCode":Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    const-string v1, "CODES_ONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 655
    :cond_0
    :goto_0
    return-object v0

    .line 578
    :cond_1
    const-string v1, "REACTIVATED_CUSTOMER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 582
    :cond_2
    const-string v1, "INVALID_EMAIL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 586
    :cond_3
    const-string v1, "PRIVACY_POLICY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 588
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 590
    :cond_4
    const-string v1, "PARENTS_REQUEST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 592
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 594
    :cond_5
    const-string v1, "SUSPENDED_MISCONDUCT_GENERAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 596
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 598
    :cond_6
    const-string v1, "SUSPENDED_MISCONDUCT_HARASSMENT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 600
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 602
    :cond_7
    const-string v1, "SUSPENDED_MISCONDUCT_MACROING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 604
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 606
    :cond_8
    const-string v1, "SUSPENDED_MISCONDUCT_EXPLOITATION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 608
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 610
    :cond_9
    const-string v1, "SUSPENDED_FRAUD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 612
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 614
    :cond_a
    const-string v1, "CUSTOMER_OPT_OUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 616
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 618
    :cond_b
    const-string v1, "CUSTOMER_UNDER_AGE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 620
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    .line 622
    :cond_c
    const-string v1, "EMAIL_CONFIRMATION_REQUIRED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 624
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    .line 626
    :cond_d
    const-string v1, "MISTYPED_ID"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 628
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    .line 630
    :cond_e
    const-string v1, "ABUSED_ID"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 632
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    .line 634
    :cond_f
    const-string v1, "DEACTIVATED_EMAIL_LINK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 636
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    .line 638
    :cond_10
    const-string v1, "DEACTIVATED_CS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 640
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    .line 642
    :cond_11
    const-string v1, "CLAIMED_BY_TRUE_OWNER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 644
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    .line 646
    :cond_12
    const-string v1, "BANNED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 648
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    .line 650
    :cond_13
    const-string v1, "DEACTIVATED_AFFILIATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0
.end method

.method public static toStringPersonaPrivacyLevel(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;)Ljava/lang/String;
    .locals 3
    .param p0, "level"    # Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    .prologue
    .line 498
    const-string v0, ""

    .line 499
    .local v0, "retLevel":Ljava/lang/String;
    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaPrivacyLevel:[I

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 529
    :goto_0
    return-object v0

    .line 503
    :pswitch_0
    const-string v0, "NO_ONE"

    .line 505
    goto :goto_0

    .line 509
    :pswitch_1
    const-string v0, "EVERYONE"

    .line 511
    goto :goto_0

    .line 515
    :pswitch_2
    const-string v0, "FRIENDS"

    .line 517
    goto :goto_0

    .line 521
    :pswitch_3
    const-string v0, "FRIENDS_OF_FRIENDS"

    .line 523
    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toStringPersonaStatus(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .prologue
    .line 351
    const-string v0, ""

    .line 353
    .local v0, "retStatus":Ljava/lang/String;
    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 395
    :goto_0
    return-object v0

    .line 357
    :pswitch_0
    const-string v0, "PENDING"

    .line 359
    goto :goto_0

    .line 363
    :pswitch_1
    const-string v0, "ACTIVE"

    .line 365
    goto :goto_0

    .line 369
    :pswitch_2
    const-string v0, "DEACTIVATED"

    .line 371
    goto :goto_0

    .line 375
    :pswitch_3
    const-string v0, "DISABLED"

    .line 377
    goto :goto_0

    .line 381
    :pswitch_4
    const-string v0, "DELETED"

    .line 383
    goto :goto_0

    .line 387
    :pswitch_5
    const-string v0, "BANNED"

    .line 389
    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static toStringPersonaStatusReasonCodes(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .prologue
    .line 404
    const-string v0, ""

    .line 405
    .local v0, "retCode":Ljava/lang/String;
    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 490
    :goto_0
    return-object v0

    .line 408
    :pswitch_0
    const-string v0, "CODES_ONE"

    .line 409
    goto :goto_0

    .line 412
    :pswitch_1
    const-string v0, "REACTIVATED_CUSTOMER"

    .line 413
    goto :goto_0

    .line 416
    :pswitch_2
    const-string v0, "INVALID_EMAIL"

    .line 417
    goto :goto_0

    .line 420
    :pswitch_3
    const-string v0, "PRIVACY_POLICY"

    .line 421
    goto :goto_0

    .line 424
    :pswitch_4
    const-string v0, "PARENTS_REQUEST"

    .line 425
    goto :goto_0

    .line 428
    :pswitch_5
    const-string v0, "SUSPENDED_MISCONDUCT_GENERAL"

    .line 429
    goto :goto_0

    .line 432
    :pswitch_6
    const-string v0, "SUSPENDED_MISCONDUCT_HARASSMENT"

    .line 433
    goto :goto_0

    .line 436
    :pswitch_7
    const-string v0, "SUSPENDED_MISCONDUCT_MACROING"

    .line 437
    goto :goto_0

    .line 440
    :pswitch_8
    const-string v0, "SUSPENDED_MISCONDUCT_EXPLOITATION"

    .line 441
    goto :goto_0

    .line 444
    :pswitch_9
    const-string v0, "SUSPENDED_FRAUD"

    .line 445
    goto :goto_0

    .line 448
    :pswitch_a
    const-string v0, "CUSTOMER_OPT_OUT"

    .line 449
    goto :goto_0

    .line 452
    :pswitch_b
    const-string v0, "CUSTOMER_UNDER_AGE"

    .line 453
    goto :goto_0

    .line 456
    :pswitch_c
    const-string v0, "EMAIL_CONFIRMATION_REQUIRED"

    .line 457
    goto :goto_0

    .line 460
    :pswitch_d
    const-string v0, "MISTYPED_ID"

    .line 461
    goto :goto_0

    .line 464
    :pswitch_e
    const-string v0, "ABUSED_ID"

    .line 465
    goto :goto_0

    .line 468
    :pswitch_f
    const-string v0, "DEACTIVATED_EMAIL_LINK"

    .line 469
    goto :goto_0

    .line 472
    :pswitch_10
    const-string v0, "DEACTIVATED_CS"

    .line 473
    goto :goto_0

    .line 476
    :pswitch_11
    const-string v0, "CLAIMED_BY_TRUE_OWNER"

    .line 477
    goto :goto_0

    .line 480
    :pswitch_12
    const-string v0, "BANNED"

    .line 481
    goto :goto_0

    .line 484
    :pswitch_13
    const-string v0, "DEACTIVATED_AFFILIATE"

    .line 485
    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public getDateCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->dateCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->expiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLastAuthenticated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->lastAuthenticated:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->namespaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaId()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->personaId:J

    return-wide v0
.end method

.method public getPidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->pidId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowPersona()Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    return-object v0
.end method

.method public getStatusReasonCode()Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    return-object v0
.end method

.method public getStauts()Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    return-object v0
.end method

.method public getVisible()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    return-object v0
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->dateCreated:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "display"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->displayName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setLastAuthenticated(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastAuth"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->lastAuthenticated:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->name:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setNamespaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->namespaceName:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setPersonaId(J)V
    .locals 1
    .param p1, "persona"    # J

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->personaId:J

    .line 250
    return-void
.end method

.method public setPidId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->pidId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setShowPersona(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;)V
    .locals 0
    .param p1, "persona"    # Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    .line 314
    return-void
.end method

.method public setStatusReasonCode(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;)V
    .locals 0
    .param p1, "responseCode"    # Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 306
    return-void
.end method

.method public setStauts(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 298
    return-void
.end method

.method public setVisible(Ljava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    .line 290
    return-void
.end method
