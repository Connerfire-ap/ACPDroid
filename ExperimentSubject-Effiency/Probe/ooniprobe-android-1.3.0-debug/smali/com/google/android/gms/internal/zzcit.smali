.class final Lcom/google/android/gms/internal/zzcit;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjdv:Ljava/lang/String;

.field private synthetic zzjeh:Lcom/google/android/gms/internal/zzcik;

.field private synthetic zzjem:J

.field private synthetic zzjer:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcik;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcit;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcit;->zzjdv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcit;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcit;->zzjer:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcit;->zzjem:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcit;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcit;->zzjdv:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcit;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcit;->zzjer:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcit;->zzjem:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcik;->zza(Lcom/google/android/gms/internal/zzcik;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
