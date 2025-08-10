.class final Lcom/google/android/gms/internal/zzcis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzijk:Ljava/lang/String;

.field private synthetic zzjdv:Ljava/lang/String;

.field private synthetic zzjeh:Lcom/google/android/gms/internal/zzcik;

.field private synthetic zzjem:J

.field private synthetic zzjen:Landroid/os/Bundle;

.field private synthetic zzjeo:Z

.field private synthetic zzjep:Z

.field private synthetic zzjeq:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcik;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcis;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcis;->zzjdv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcis;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcis;->zzjem:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcis;->zzjen:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcis;->zzjeo:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzcis;->zzjep:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzcis;->zzjeq:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/zzcis;->zzijk:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcis;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcis;->zzjdv:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcis;->val$name:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcis;->zzjem:J

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcis;->zzjen:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcis;->zzjeo:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzcis;->zzjep:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzcis;->zzjeq:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/zzcis;->zzijk:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzcik;->zza(Lcom/google/android/gms/internal/zzcik;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
