.class Lorg/openobservatory/ooniprobe/data/TestData$2;
.super Landroid/os/AsyncTask;
.source "TestData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$currentTest",
            "val$ctx"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 122
    const-string v0, "TestData"

    :try_start_0
    const-string v1, "running test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "http_invalid_request_line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "running http_invalid_request_line test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$1;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$1;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    goto/16 :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "http_header_field_manipulation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 133
    const-string v1, "running http_header_field_manipulation test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$2;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$2;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    goto/16 :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "web_connectivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 143
    const-string v1, "running web-connectivity test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$3;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$3;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    goto/16 :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "ndt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 152
    const-string v1, "running ndt test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$4;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$4;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    goto/16 :goto_0

    .line 161
    :cond_3
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "dash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 162
    const-string v1, "running dash test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$5;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$5;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "whatsapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 172
    const-string v1, "running whatsapp test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$6;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$6;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    goto :goto_0

    .line 181
    :cond_5
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "telegram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 182
    const-string v1, "running telegram test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$7;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$7;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    goto :goto_0

    .line 191
    :cond_6
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    const-string v2, "facebook_messenger"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 192
    const-string v1, "running facebook_messenger test..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test:Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    new-instance v2, Lorg/openobservatory/ooniprobe/data/TestData$2$8;

    invoke-direct {v2, p0}, Lorg/openobservatory/ooniprobe/data/TestData$2$8;-><init>(Lorg/openobservatory/ooniprobe/data/TestData$2;)V

    invoke-interface {v1, v2}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/nettests/BaseTest;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Lorg/openobservatory/measurement_kit/nettests/BaseTest;->run()V

    .line 204
    :goto_0
    const-string v1, "running test... done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    goto :goto_1

    .line 202
    :cond_7
    new-instance v0, Lorg/openobservatory/ooniprobe/model/UnknownTest;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/openobservatory/ooniprobe/model/UnknownTest;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":[Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .restart local p1    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 116
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/openobservatory/ooniprobe/data/TestData$2;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->setCompleted(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 218
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 219
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->runningTests:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->finishedTests:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->availableTests:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v2, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openobservatory/ooniprobe/data/TestData;->context:Landroid/content/Context;

    sget-object v1, Lorg/openobservatory/ooniprobe/data/TestData;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v0

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->notifyObservers(Ljava/lang/Object;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/utils/NotificationHandler;->notifyTestEnded(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doNetworkMeasurements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/data/TestData$2;->val$currentTest:Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "... done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestData"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 116
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/openobservatory/ooniprobe/data/TestData$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "values"
        }
    .end annotation

    .line 116
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/openobservatory/ooniprobe/data/TestData$2;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 214
    return-void
.end method
