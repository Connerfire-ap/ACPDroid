.class public final Landroid/support/v4/R$drawable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final notification_action_background:I = 0x7f07006f

.field public static final notification_bg:I = 0x7f070070

.field public static final notification_bg_low:I = 0x7f070071

.field public static final notification_bg_low_normal:I = 0x7f070072

.field public static final notification_bg_low_pressed:I = 0x7f070073

.field public static final notification_bg_normal:I = 0x7f070074

.field public static final notification_bg_normal_pressed:I = 0x7f070075

.field public static final notification_icon_background:I = 0x7f070076

.field public static final notification_template_icon_bg:I = 0x7f070077

.field public static final notification_template_icon_low_bg:I = 0x7f070078

.field public static final notification_tile_bg:I = 0x7f070079

.field public static final notify_panel_notification_icon_bg:I = 0x7f07007a


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v4/R$drawable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x68cd07bea094513cL    # 6.781378719010254E196

    const/4 v2, 0x1

    const-string v3, "android/support/v4/R$drawable"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v4/R$drawable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/v4/R$drawable;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
