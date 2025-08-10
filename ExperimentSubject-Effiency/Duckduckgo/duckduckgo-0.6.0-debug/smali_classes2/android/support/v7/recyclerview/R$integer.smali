.class public final Landroid/support/v7/recyclerview/R$integer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final status_bar_notification_info_maxnum:I = 0x7f090009


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/recyclerview/R$integer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2264dd1f162a4a83L    # 5.346684464127744E-143

    const/4 v2, 0x1

    const-string v3, "android/support/v7/recyclerview/R$integer"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$integer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/v7/recyclerview/R$integer;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
