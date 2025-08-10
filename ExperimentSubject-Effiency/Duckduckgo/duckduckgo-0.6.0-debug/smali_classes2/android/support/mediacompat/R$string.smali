.class public final Landroid/support/mediacompat/R$string;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/mediacompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final status_bar_notification_info_overflow:I = 0x7f0e0040


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/mediacompat/R$string;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xfefff8d7c53fd9dL    # -6.210750567406734E231

    const/4 v2, 0x1

    const-string v3, "android/support/mediacompat/R$string"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/mediacompat/R$string;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/mediacompat/R$string;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
