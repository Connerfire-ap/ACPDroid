.class public final Landroid/support/v4/R$layout;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final notification_action:I = 0x7f0a002d

.field public static final notification_action_tombstone:I = 0x7f0a002e

.field public static final notification_media_action:I = 0x7f0a002f

.field public static final notification_media_cancel_action:I = 0x7f0a0030

.field public static final notification_template_big_media:I = 0x7f0a0031

.field public static final notification_template_big_media_custom:I = 0x7f0a0032

.field public static final notification_template_big_media_narrow:I = 0x7f0a0033

.field public static final notification_template_big_media_narrow_custom:I = 0x7f0a0034

.field public static final notification_template_custom_big:I = 0x7f0a0035

.field public static final notification_template_icon_group:I = 0x7f0a0036

.field public static final notification_template_lines_media:I = 0x7f0a0037

.field public static final notification_template_media:I = 0x7f0a0038

.field public static final notification_template_media_custom:I = 0x7f0a0039

.field public static final notification_template_part_chronometer:I = 0x7f0a003a

.field public static final notification_template_part_time:I = 0x7f0a003b


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v4/R$layout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x22c9c2361af7c7fcL    # -1.0594473163529E141

    const/4 v2, 0x1

    const-string v3, "android/support/v4/R$layout"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v4/R$layout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/v4/R$layout;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
