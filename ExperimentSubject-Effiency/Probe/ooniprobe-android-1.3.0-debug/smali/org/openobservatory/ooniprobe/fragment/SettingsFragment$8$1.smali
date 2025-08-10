.class Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8$1;->this$1:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 17
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "selectedHour"    # I
    .param p3, "selectedMinute"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timePicker",
            "selectedHour",
            "selectedMinute"
        }
    .end annotation

    .line 216
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    const-string v3, "EN"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v1, "en_locale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 218
    .local v2, "nf":Ljava/text/NumberFormat;
    move/from16 v3, p2

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 219
    .local v4, "hour":I
    move/from16 v5, p3

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 220
    .local v6, "minute":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string v10, "%02d"

    invoke-static {v1, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-static {v1, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "time":Ljava/lang/String;
    iget-object v12, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8$1;->this$1:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;

    iget-object v12, v12, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iget-object v12, v12, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 222
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "local_notifications_time"

    invoke-interface {v12, v13, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    iget-object v13, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8$1;->this$1:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;

    iget-object v13, v13, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;->val$local_notifications_timeEditText:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-array v15, v8, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-static {v10, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v8, v0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8$1;->this$1:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;

    iget-object v8, v8, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$8;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v8}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v8

    invoke-virtual {v8}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lorg/openobservatory/ooniprobe/utils/NotificationHandler;->setRecurringAlarm(Landroid/content/Context;)V

    .line 226
    return-void
.end method
