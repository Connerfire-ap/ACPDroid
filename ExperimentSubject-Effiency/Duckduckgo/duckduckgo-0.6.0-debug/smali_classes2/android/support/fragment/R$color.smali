.class public final Landroid/support/fragment/R$color;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/fragment/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final notification_action_color_filter:I = 0x7f05004e

.field public static final notification_icon_bg_color:I = 0x7f05004f

.field public static final ripple_material_light:I = 0x7f05005b

.field public static final secondary_text_default_material_light:I = 0x7f05005e


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/fragment/R$color;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x13864993b801346fL    # -3.4624439402405015E214

    const/4 v2, 0x1

    const-string v3, "android/support/fragment/R$color"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/fragment/R$color;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/fragment/R$color;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
