.class public final Lcom/google/android/gms/common/util/zzf;
.super Ljava/lang/Object;


# static fields
.field private static final zzgbg:[Ljava/lang/String;

.field private static zzgbh:Landroid/os/DropBoxManager;

.field private static zzgbi:Z

.field private static zzgbj:I

.field private static zzgbk:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "com.android."

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "dalvik."

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "java."

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "javax."

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/android/gms/common/util/zzf;->zzgbg:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzf;->zzgbh:Landroid/os/DropBoxManager;

    sput-boolean v2, Lcom/google/android/gms/common/util/zzf;->zzgbi:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/zzf;->zzgbj:I

    sput v2, Lcom/google/android/gms/common/util/zzf;->zzgbk:I

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/zzf;->zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
