.class public final Landroid/arch/lifecycle/reactivestreams/R$style;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/reactivestreams/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final TextAppearance_Compat_Notification:I = 0x7f0f00fd

.field public static final TextAppearance_Compat_Notification_Info:I = 0x7f0f00fe

.field public static final TextAppearance_Compat_Notification_Line2:I = 0x7f0f0100

.field public static final TextAppearance_Compat_Notification_Time:I = 0x7f0f0103

.field public static final TextAppearance_Compat_Notification_Title:I = 0x7f0f0105

.field public static final Widget_Compat_NotificationActionContainer:I = 0x7f0f017b

.field public static final Widget_Compat_NotificationActionText:I = 0x7f0f017c


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/arch/lifecycle/reactivestreams/R$style;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x14b7f5ed8780a684L    # -6.174327061263749E208

    const/4 v2, 0x1

    const-string v3, "android/arch/lifecycle/reactivestreams/R$style"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/arch/lifecycle/reactivestreams/R$style;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/arch/lifecycle/reactivestreams/R$style;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
