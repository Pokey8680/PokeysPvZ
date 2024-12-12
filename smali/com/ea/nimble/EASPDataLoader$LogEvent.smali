.class public Lcom/ea/nimble/EASPDataLoader$LogEvent;
.super Ljava/lang/Object;
.source "EASPDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/EASPDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEvent"
.end annotation


# instance fields
.field public m_EAUID:I

.field public m_dateTimeInNanoseconds:J

.field public m_indexInsideSession:I

.field public m_keyType01:I

.field public m_keyType02:I

.field public m_keyType03:I

.field public m_randomPart:Ljava/lang/String;

.field public m_timestamp:J

.field public m_type:I

.field public m_userLevel:I

.field public m_value01:Ljava/lang/String;

.field public m_value02:Ljava/lang/String;

.field public m_value03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
