.class Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

.field final synthetic val$local_notifications_timeEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$local_notifications_timeEditText"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;->val$local_notifications_timeEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 210
    .local v0, "mcurrentTime":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 211
    .local v1, "hour":I
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 213
    .local v8, "minute":I
    new-instance v9, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v2}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v3

    new-instance v4, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8$1;

    invoke-direct {v4, p0}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8$1;-><init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;)V

    const/4 v7, 0x1

    move-object v2, v9

    move v5, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 228
    .local v2, "mTimePicker":Landroid/app/TimePickerDialog;
    invoke-virtual {v2}, Landroid/app/TimePickerDialog;->show()V

    .line 229
    return-void
.end method
