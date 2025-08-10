.class public final Lcom/google/android/gms/internal/zzckc;
.super Lcom/google/android/gms/internal/zzcii;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzjgh:J

.field private final zzjgi:Lcom/google/android/gms/internal/zzcfp;

.field private final zzjgj:Lcom/google/android/gms/internal/zzcfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchj;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcii;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    new-instance p1, Lcom/google/android/gms/internal/zzckd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzckd;-><init>(Lcom/google/android/gms/internal/zzckc;Lcom/google/android/gms/internal/zzchj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjgi:Lcom/google/android/gms/internal/zzcfp;

    new-instance p1, Lcom/google/android/gms/internal/zzcke;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzcke;-><init>(Lcom/google/android/gms/internal/zzckc;Lcom/google/android/gms/internal/zzchj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjgj:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjgh:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzckc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckc;->zzbak()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzckc;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzckc;->zzbd(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzckc;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzckc;->zzbe(J)V

    return-void
.end method

.method private final zzbaj()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckc;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzbak()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzckc;->zzbr(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzavy()Lcom/google/android/gms/internal/zzcfa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfa;->zzai(J)V

    return-void
.end method

.method private final zzbd(J)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckc;->zzbaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjgi:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjgj:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjgh:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjak:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjam:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgu;->zzjal:Lcom/google/android/gms/internal/zzcgw;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcgw;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgu;->zzjan:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgu;->zzjal:Lcom/google/android/gms/internal/zzcgw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgw;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjgi:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgu;->zzjaj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgu;->zzjan:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcfp;->zzr(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjgj:Lcom/google/android/gms/internal/zzcfp;

    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method private final zzbe(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckc;->zzbaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjgi:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjgj:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjgh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjan:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgu;->zzjan:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzckc;->zzjgh:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzavw()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzavw()V

    return-void
.end method

.method public final bridge synthetic zzavx()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzavx()V

    return-void
.end method

.method public final bridge synthetic zzavy()Lcom/google/android/gms/internal/zzcfa;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzavy()Lcom/google/android/gms/internal/zzcfa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzavz()Lcom/google/android/gms/internal/zzcfh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzavz()Lcom/google/android/gms/internal/zzcfh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawa()Lcom/google/android/gms/internal/zzcik;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawa()Lcom/google/android/gms/internal/zzcik;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawb()Lcom/google/android/gms/internal/zzcge;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawb()Lcom/google/android/gms/internal/zzcge;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawc()Lcom/google/android/gms/internal/zzcfr;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawc()Lcom/google/android/gms/internal/zzcfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawd()Lcom/google/android/gms/internal/zzcjd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawe()Lcom/google/android/gms/internal/zzciz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawe()Lcom/google/android/gms/internal/zzciz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawf()Lcom/google/android/gms/internal/zzcgf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawf()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawg()Lcom/google/android/gms/internal/zzcfl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawg()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawh()Lcom/google/android/gms/internal/zzcgh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawh()Lcom/google/android/gms/internal/zzcgh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawi()Lcom/google/android/gms/internal/zzckn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawi()Lcom/google/android/gms/internal/zzckn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawj()Lcom/google/android/gms/internal/zzchd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawj()Lcom/google/android/gms/internal/zzchd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzckc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawk()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzche;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcgj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzcgu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcfk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzawo()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbr(Z)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcii;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcgu;->zzjam:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzckc;->zzjgh:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgu;->zzjan:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawe()Lcom/google/android/gms/internal/zzciz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzciz;->zzbac()Lcom/google/android/gms/internal/zzcjc;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzciz;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawa()Lcom/google/android/gms/internal/zzcik;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_e"

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/gms/internal/zzcik;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjgh:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjgj:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfp;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjgj:Lcom/google/android/gms/internal/zzcfp;

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcgu;->zzjan:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgx;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcfp;->zzr(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzut()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzut()V

    return-void
.end method

.method public final bridge synthetic zzwh()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcii;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
