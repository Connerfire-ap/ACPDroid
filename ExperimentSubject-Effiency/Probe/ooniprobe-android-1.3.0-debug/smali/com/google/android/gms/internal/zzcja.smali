.class final Lcom/google/android/gms/internal/zzcja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjfb:Z

.field private synthetic zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private synthetic zzjfd:Lcom/google/android/gms/internal/zzcjc;

.field private synthetic zzjfe:Lcom/google/android/gms/internal/zzciz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciz;ZLcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/internal/zzcjc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcja;->zzjfb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcja;->zzjfd:Lcom/google/android/gms/internal/zzcjc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciz;->zzjes:Lcom/google/android/gms/internal/zzcjc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzciz;->zzjes:Lcom/google/android/gms/internal/zzcjc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzciz;->zza(Lcom/google/android/gms/internal/zzciz;Lcom/google/android/gms/internal/zzcjc;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitr:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcja;->zzjfd:Lcom/google/android/gms/internal/zzcjc;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcjc;->zzitr:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitq:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfd:Lcom/google/android/gms/internal/zzcjc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcjc;->zzitq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitp:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfd:Lcom/google/android/gms/internal/zzcjc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcjc;->zzitp:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzckn;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfd:Lcom/google/android/gms/internal/zzcjc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzciz;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitp:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitp:Ljava/lang/String;

    const-string v2, "_pn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitq:Ljava/lang/String;

    const-string v2, "_pc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-wide v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitr:J

    const-string v3, "_pi"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzawa()Lcom/google/android/gms/internal/zzcik;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcik;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfd:Lcom/google/android/gms/internal/zzcjc;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzciz;->zzjes:Lcom/google/android/gms/internal/zzcjc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcja;->zzjfd:Lcom/google/android/gms/internal/zzcjc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjd;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
