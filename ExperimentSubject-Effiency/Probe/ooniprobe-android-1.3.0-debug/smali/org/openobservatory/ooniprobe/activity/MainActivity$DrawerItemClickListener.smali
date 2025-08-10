.class Lorg/openobservatory/ooniprobe/activity/MainActivity$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;


# direct methods
.method private constructor <init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$DrawerItemClickListener;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;Lorg/openobservatory/ooniprobe/activity/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .param p2, "x1"    # Lorg/openobservatory/ooniprobe/activity/MainActivity$1;

    .line 147
    invoke-direct {p0, p1}, Lorg/openobservatory/ooniprobe/activity/MainActivity$DrawerItemClickListener;-><init>(Lorg/openobservatory/ooniprobe/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 150
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/MainActivity$DrawerItemClickListener;->this$0:Lorg/openobservatory/ooniprobe/activity/MainActivity;

    invoke-virtual {v0, p3}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->selectItem(I)V

    .line 151
    return-void
.end method
