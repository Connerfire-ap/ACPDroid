.class public final Lcom/google/android/gms/internal/zzcgx;
.super Ljava/lang/Object;


# instance fields
.field private final zzbfo:Ljava/lang/String;

.field private zzdot:J

.field private zzjaq:Z

.field private synthetic zzjar:Lcom/google/android/gms/internal/zzcgu;

.field private final zzjas:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcgu;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgx;->zzjar:Lcom/google/android/gms/internal/zzcgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgh(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgx;->zzbfo:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcgx;->zzjas:J

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzjaq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzjaq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzjar:Lcom/google/android/gms/internal/zzcgu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgu;->zza(Lcom/google/android/gms/internal/zzcgu;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgx;->zzbfo:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgx;->zzjas:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzdot:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzdot:J

    return-wide v0
.end method

.method public final set(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzjar:Lcom/google/android/gms/internal/zzcgu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgu;->zza(Lcom/google/android/gms/internal/zzcgu;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgx;->zzbfo:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgx;->zzdot:J

    return-void
.end method
