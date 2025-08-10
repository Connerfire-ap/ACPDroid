.class public final Landroid/support/coreui/R$dimen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/coreui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final compat_button_inset_horizontal_material:I = 0x7f06004a

.field public static final compat_button_inset_vertical_material:I = 0x7f06004b

.field public static final compat_button_padding_horizontal_material:I = 0x7f06004c

.field public static final compat_button_padding_vertical_material:I = 0x7f06004d

.field public static final compat_control_corner_material:I = 0x7f06004e

.field public static final notification_action_icon_size:I = 0x7f060084

.field public static final notification_action_text_size:I = 0x7f060085

.field public static final notification_big_circle_margin:I = 0x7f060086

.field public static final notification_content_margin_start:I = 0x7f060087

.field public static final notification_large_icon_height:I = 0x7f060088

.field public static final notification_large_icon_width:I = 0x7f060089

.field public static final notification_main_column_padding_top:I = 0x7f06008a

.field public static final notification_media_narrow_margin:I = 0x7f06008b

.field public static final notification_right_icon_size:I = 0x7f06008c

.field public static final notification_right_side_padding_top:I = 0x7f06008d

.field public static final notification_small_icon_background_padding:I = 0x7f06008e

.field public static final notification_small_icon_size_as_large:I = 0x7f06008f

.field public static final notification_subtext_size:I = 0x7f060090

.field public static final notification_top_pad:I = 0x7f060091

.field public static final notification_top_pad_large_text:I = 0x7f060092


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/coreui/R$dimen;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x711d9c793fe5d12cL    # -5.647889837232984E-237

    const/4 v2, 0x1

    const-string v3, "android/support/coreui/R$dimen"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/coreui/R$dimen;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/coreui/R$dimen;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
