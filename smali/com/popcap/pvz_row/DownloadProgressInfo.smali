.class public Lcom/popcap/pvz_row/DownloadProgressInfo;
.super Ljava/lang/Object;
.source "DownloadProgressInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/popcap/pvz_row/DownloadProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCurrentSpeed:F

.field public mOverallProgress:J

.field public mOverallTotal:J

.field public mTimeRemaining:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/popcap/pvz_row/DownloadProgressInfo$1;

    invoke-direct {v0}, Lcom/popcap/pvz_row/DownloadProgressInfo$1;-><init>()V

    sput-object v0, Lcom/popcap/pvz_row/DownloadProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJF)V
    .locals 1
    .param p1, "overallTotal"    # J
    .param p3, "overallProgress"    # J
    .param p5, "timeRemaining"    # J
    .param p7, "currentSpeed"    # F

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallTotal:J

    .line 63
    iput-wide p3, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallProgress:J

    .line 64
    iput-wide p5, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mTimeRemaining:J

    .line 65
    iput p7, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mCurrentSpeed:F

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallTotal:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallProgress:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mTimeRemaining:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mCurrentSpeed:F

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-wide v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mOverallProgress:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mTimeRemaining:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v0, p0, Lcom/popcap/pvz_row/DownloadProgressInfo;->mCurrentSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    return-void
.end method
