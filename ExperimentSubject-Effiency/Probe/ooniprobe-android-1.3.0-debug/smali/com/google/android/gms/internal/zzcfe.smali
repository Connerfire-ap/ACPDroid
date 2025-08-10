.class final Lcom/google/android/gms/internal/zzcfe;
.super Ljava/lang/Object;


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private zzcvg:Ljava/lang/String;

.field private zzdoc:Ljava/lang/String;

.field private zzgdh:Ljava/lang/String;

.field private final zzitk:Lcom/google/android/gms/internal/zzchj;

.field private zziub:Ljava/lang/String;

.field private zziuc:Ljava/lang/String;

.field private zziud:J

.field private zziue:J

.field private zziuf:J

.field private zziug:J

.field private zziuh:Ljava/lang/String;

.field private zziui:J

.field private zziuj:J

.field private zziuk:Z

.field private zziul:J

.field private zzium:Z

.field private zziun:J

.field private zziuo:J

.field private zziup:J

.field private zziuq:J

.field private zziur:J

.field private zzius:J

.field private zziut:Ljava/lang/String;

.field private zziuu:Z

.field private zziuv:J

.field private zziuw:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfe;->mAppId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzgdh:Ljava/lang/String;

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzcvg:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->zzdoc:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zzdoc:Ljava/lang/String;

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuk:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuk:Z

    return-void
.end method

.method public final zzak(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziue:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziue:J

    return-void
.end method

.method public final zzal(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuf:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuf:J

    return-void
.end method

.method public final zzam(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziug:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziug:J

    return-void
.end method

.method public final zzan(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziui:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziui:J

    return-void
.end method

.method public final zzao(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuj:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuj:J

    return-void
.end method

.method public final zzap(J)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcfe;->zziud:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziud:J

    return-void
.end method

.method public final zzaq(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuv:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuv:J

    return-void
.end method

.method public final zzar(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuw:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuw:J

    return-void
.end method

.method public final zzas(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziun:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziun:J

    return-void
.end method

.method public final zzat(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuo:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuo:J

    return-void
.end method

.method public final zzau(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziup:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziup:J

    return-void
.end method

.method public final zzav(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuq:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuq:J

    return-void
.end method

.method public final zzaw(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zzius:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zzius:J

    return-void
.end method

.method public final zzawp()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    return-void
.end method

.method public final zzawq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziub:Ljava/lang/String;

    return-object v0
.end method

.method public final zzawr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaws()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziue:J

    return-wide v0
.end method

.method public final zzawt()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuf:J

    return-wide v0
.end method

.method public final zzawu()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziug:J

    return-wide v0
.end method

.method public final zzawv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaww()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziui:J

    return-wide v0
.end method

.method public final zzawx()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuj:J

    return-wide v0
.end method

.method public final zzawy()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuk:Z

    return v0
.end method

.method public final zzawz()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziud:J

    return-wide v0
.end method

.method public final zzax(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziur:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziur:J

    return-void
.end method

.method public final zzaxa()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuv:J

    return-wide v0
.end method

.method public final zzaxb()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuw:J

    return-wide v0
.end method

.method public final zzaxc()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziud:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcgj;->zzje(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziud:J

    return-void
.end method

.method public final zzaxd()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziun:J

    return-wide v0
.end method

.method public final zzaxe()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuo:J

    return-wide v0
.end method

.method public final zzaxf()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziup:J

    return-wide v0
.end method

.method public final zzaxg()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuq:J

    return-wide v0
.end method

.method public final zzaxh()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzius:J

    return-wide v0
.end method

.method public final zzaxi()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziur:J

    return-wide v0
.end method

.method public final zzaxj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziut:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaxk()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziut:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcfe;->zziq(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzaxl()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziul:J

    return-wide v0
.end method

.method public final zzaxm()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzium:Z

    return v0
.end method

.method public final zzay(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziul:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziul:J

    return-void
.end method

.method public final zzbk(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzium:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcfe;->zzium:Z

    return-void
.end method

.method public final zzil(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->zzgdh:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zzgdh:Ljava/lang/String;

    return-void
.end method

.method public final zzim(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->zzcvg:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zzcvg:Ljava/lang/String;

    return-void
.end method

.method public final zzin(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziub:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziub:Ljava/lang/String;

    return-void
.end method

.method public final zzio(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuc:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuc:Ljava/lang/String;

    return-void
.end method

.method public final zzip(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuh:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziuh:Ljava/lang/String;

    return-void
.end method

.method public final zziq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfe;->zziut:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfe;->zziuu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfe;->zziut:Ljava/lang/String;

    return-void
.end method

.method public final zzuy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfe;->zzdoc:Ljava/lang/String;

    return-object v0
.end method
