
resource "aws_ecs_task_definition" "tutum-hello-world" {
    family = "tutum-hello-world"
    container_definitions = "${file("task-definitions/tutum-hello-world.json")}"
}
# 
# resource "aws_ecs_service" "tutum-hello-world" {
#     name = "tutum-hello-world"
#     cluster = "${module.ecs.aws_ecs_cluster_id}"
#     task_definition = "${aws_ecs_task_definition.tutum-hello-world.arn}"
#     desired_count = 1
#
#     load_balancer {
#         target_group_arn = "${module.ecs.default_alb_target_group}"
#         container_name = "tutum-hello-world"
#         container_port = 80
#     }
# }
